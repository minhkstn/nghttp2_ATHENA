#include <iostream>
#include <chrono>
#include <thread>
#include <mutex>
#include <boost/algorithm/string.hpp>
#include <boost/bind.hpp>
#include <nghttp2/asio_http2_server.h>

using namespace nghttp2::asio_http2;
using namespace nghttp2::asio_http2::server;
using namespace boost::posix_time;

std::string bitrate;
int num;

int segment_duration = 1000; // 1000ms
auto avail_seg = std::make_shared<int>();
auto server_seg = std::make_shared<int>();
const int MAX_SEGMENTS = 50;

bool on_pushing_in_periodic_mode = false;
bool on_steady_stage = false;

ptime start_time, end_time;

void init_new_connection() {
  on_pushing_in_periodic_mode = false;

  start_time = microsec_clock::local_time();
}

int get_time() {
  end_time = microsec_clock::local_time();
  return (end_time - start_time).total_milliseconds();
}

void print_new_seg(int cur_seg) {
  std::cout << std::endl << "Respond seg #" << cur_seg << " bitrate " << bitrate;
  std::cout << " at time: " << get_time() << "ms" << std::endl;
}

void push_remaining_files(const response *res) {
  if (*server_seg + 1 >= MAX_SEGMENTS) {
    res->write_head(200);
    res->end();
    return;
  } 

  // if all required segments were pushed. Note that it must not combined 
  // with the previous instruction
  if (num == 0) { return; }

  print_new_seg(*server_seg+1);
  num--;

  boost::system::error_code ec;
  auto push = res->push(ec, "GET", "/seg_"+std::to_string(*server_seg+1)+"_rate_"+bitrate);

  push->on_close([res](uint32_t error_code) {
    if (!error_code) {                    // if CANCEL is not sent
      *server_seg = *server_seg + 1;
      std::cout << "Sent seg #" << *server_seg << " bitrate " << bitrate 
                        << " at time: " << get_time() << "ms" << std::endl;
    }

    if (*server_seg >= *avail_seg || num == 0) {
      on_pushing_in_periodic_mode = false;
      if (num == 0) {
        res->write_head(200);
        res->end();
      }
    } else {
      on_pushing_in_periodic_mode = true;
      push_remaining_files(res);
    }

  });

  push->write_head(200);
  push->end(file_generator("./real_cbr/"+std::to_string(segment_duration)+"ms/"+bitrate));
  on_pushing_in_periodic_mode = true;
}

void push_file(
    std::shared_ptr<boost::asio::basic_deadline_timer<ptime>> timer, 
    const response *res, std::shared_ptr<bool> closed, boost::system::error_code &ec) {
  if (ec || *closed) {
    return;
  }

  // the time instant of the next segment, note that it is available only if num > 0
  // Hung_comment: Cai nay chi la dia chi thoi nhe!
  if (num > 0) {
    timer->expires_at(timer->expires_at() + milliseconds(segment_duration));
    timer->async_wait(boost::bind(push_file, timer, res, closed, ec));
  }

  // compute avail_seg (note that video segments will be generated every segment duration
  *avail_seg = get_time() / segment_duration + 1;
  
  // if the server is pushing another segment
  if (on_pushing_in_periodic_mode) { return; }

  // push all remaining segments, 
  // during this duration, on_pushing_in_periodic_mode = true
  push_remaining_files(res);
}

int main(int argc, char *argv[]) {
  boost::system::error_code ec;
  boost::asio::ssl::context tls(boost::asio::ssl::context::sslv23);

//  tls.use_private_key_file("server.key", boost::asio::ssl::context::pem);
//  tls.use_certificate_chain_file("server.crt");
//  configure_tls_context_easy(ec, tls);

  http2 server;
  server.num_threads(100);

  server.handle("/reset_session", [](const request &req, const response &res) {
    on_steady_stage = false;
    res.write_head(200);
    res.end();
  });

  server.handle("/rebuff/", [](const request &req, const response &res) {
    if (!on_steady_stage) {
      init_new_connection();
      on_steady_stage = true;
    }

    *server_seg = get_time() / segment_duration;

    // get url, e.g. http://127.0.0.1:3002/rebuff/bitrate=2000/num=4 -> bitrate = 2000kbps, number of segments = 4.
    // currently, the special symbol & is not allowed in the url
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    if (strs.size() != 4) {
      std::cout << "[ERROR] : url is incorrect" << std::endl;
      return;
    }

    std::vector<std::string> temp;
    for (int i = 2; i < strs.size(); i++) {
      boost::split(temp, strs[i], boost::is_any_of("="));      
      if (temp[0] == "bitrate")
        bitrate = temp[1];
      else
        num = std::stoi(temp[1]);
    }

    // compute the available time instant of the next segment
    auto avail_time = start_time + milliseconds(*server_seg * segment_duration);

    // compute the wait interval to the next available time instant. It may be negative
    auto wait_intv = avail_time - microsec_clock::local_time();

    // call the tick function
    boost::system::error_code ec;

    auto timer = std::make_shared<boost::asio::deadline_timer>(res.io_service(), wait_intv);
    auto closed = std::make_shared<bool>();

    res.on_close([timer, closed](uint32_t error_code) {
      std::cout << "Finished rebuffering !!!" << std::endl;
      timer->cancel();
      *closed = true;
    });

    timer->async_wait(boost::bind(push_file, timer, &res, closed, ec));
  });

  server.handle("/req_vod/", [](const request &req, const response &res) {
    // get url, e.g. http://127.0.0.1:3002/req_vod/bitrate=2000/num=4 -> bitrate = 2000kbps, number of segments = 4.
    // currently, the special symbol & is not allowed in the url
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    if (strs.size() != 4) {
      std::cout << "[ERROR] : url is incorrect" << std::endl;
      return;
    }

    std::vector<std::string> temp;
    for (int i = 2; i < strs.size(); i++) {
      boost::split(temp, strs[i], boost::is_any_of("="));      
      if (temp[0] == "bitrate")
        bitrate = temp[1];
      else
        num = std::stoi(temp[1]);
    }

    // compute the available time instant of the next segment
    auto avail_time = start_time + milliseconds(*server_seg * segment_duration);

    // compute the wait interval to the next available time instant. It may be negative
    auto wait_intv = avail_time - microsec_clock::local_time();

    // call the tick function
    boost::system::error_code ec;

    auto timer = std::make_shared<boost::asio::deadline_timer>(res.io_service(), wait_intv);
    auto closed = std::make_shared<bool>();

    res.on_close([timer, closed](uint32_t error_code) {
      timer->cancel();
      *closed = true;
    });

    timer->async_wait(boost::bind(push_file, timer, &res, closed, ec));
  });

  std::string port="3002";
  std::cout << "Listening at the address: " << "192.168.168.1 at port "<<port << std::endl;
  if (server.listen_and_serve(ec, "192.168.168.1", port)) {
    std::cerr << "error: " << ec.message() << std::endl;
  }


  // if (server.listen_and_serve(ec, tls, "localhost", "3002")) {
  //   std::cerr << "error: " << ec.message() << std::endl;
  // }

}
