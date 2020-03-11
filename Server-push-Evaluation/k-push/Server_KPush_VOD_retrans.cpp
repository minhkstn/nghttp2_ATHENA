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

int   num;

int   segment_duration = 2000; // 1000ms
auto  avail_seg = std::make_shared<int>();
auto  server_seg = std::make_shared<int>();
int   MAX_SEGMENTS = 3000;//596000/segment_duration + 1;

bool on_pushing_in_periodic_mode = false;
bool on_steady_stage = false;

/* 191030 Minh [live streaming for retransmission] ADD-S*/
bool          retrans_check = false;
int           retrans_seg_id = 0;
int           retrans_bitrate = 0;
int           retrans_num = 0;
int           retrans_num_decrease = 0;
int           next_bitrate = 0;
int           next_num = 0;
int           req_seg_id = 0;
int           minh_server_seg = 0; // useless

bool          squad_terminate_check = false;
/* 191030 Minh [live streaming for retransmission] ADD-E*/

ptime start_time, end_time;

void init_new_connection() {
  on_pushing_in_periodic_mode = false;

  start_time = microsec_clock::local_time();
}

int get_time() {
  end_time = microsec_clock::local_time();
  return (end_time - start_time).total_milliseconds();
}

void print_new_seg(int seg_id, int bitrate, bool retrans_check) {
  if (retrans_check){
    std::cout << std::endl << "RETRANS seg #" << seg_id << " bitrate " << bitrate;
    std::cout << " at time: " << get_time() << "ms" << std::endl;    
  } else{
    std::cout << std::endl << "Respond seg #" << seg_id << " bitrate " << bitrate << " SD " << segment_duration;
    std::cout << " at time: " << get_time() << "ms" << std::endl;   
  }
}

void push_remaining_files(const response *res, bool retrans_check) {
  // if (*server_seg + 1 >= MAX_SEGMENTS) {
  //   std::cout << "********************* DONE ******************" << std::endl;
  //   res->write_head(200);
  //   res->end();          
  //   return;
  // } 

  // if (*server_seg > MAX_SEGMENTS - 10){
  //   std::cout << '\a' << std::endl;
  // }

  {
    if (next_num == 0) { return; }

    print_new_seg(req_seg_id++, next_bitrate, false);
    next_num--;

    boost::system::error_code ec;
    auto push = res->push(ec, "GET", "/seg_"+std::to_string(req_seg_id)+"_rate_"+std::to_string(next_bitrate));

    push->on_close([res](uint32_t error_code) {
      std::cout << "Sent seg #" << req_seg_id<< " bitrate " << next_bitrate 
                        << " at time: " << get_time() << "ms" << std::endl;

      if (next_num == 0) {
        on_pushing_in_periodic_mode = false;

        res->write_head(200);
        res->end();
        
      } else {
        on_pushing_in_periodic_mode = true;
        push_remaining_files(res, false);
      }

    });    

    push->write_head(200);
    // push->end(file_generator("./real_cbr/"+std::to_string(segment_duration)+"ms/"+std::to_string(next_bitrate)));
    push->end(file_generator("/home/minh/HTTP2_src/server/git/nghttp2_ATHENA/real_cbr/BBB/"+std::to_string(segment_duration)+"ms/"
                              +std::to_string(next_bitrate)+"/BigBuckBunny_"+std::to_string((int)segment_duration/1000)+
                             "s"+std::to_string(req_seg_id)+".m4s"));    
  }


  on_pushing_in_periodic_mode = true;
}

void push_file(                                 ////////////////////////////////////////////////////////////// continue here to fix SEGMENTATION FAULT 
    std::shared_ptr<boost::asio::basic_deadline_timer<ptime>> timer, 
    const response *res, std::shared_ptr<bool> closed, boost::system::error_code &ec, bool retrans_check) {
  if (ec || *closed) {
    return;
  }
  if (retrans_check == true)
    std::cout << "************************** RETRANS ***************************" << std::endl;
  // the time instant of the next segment, note that it is available only if num > 0
  // // Hung_comment: Cai nay chi la dia chi thoi nhe!
  // if (num > 0) {
  //   timer->expires_at(timer->expires_at() + milliseconds(segment_duration));
  //   timer->async_wait(boost::bind(push_file, timer, res, closed, ec));
  // }

  // // compute avail_seg (note that video segments will be generated every segment duration
  // *avail_seg = get_time() / segment_duration + 1;
  
  // if the server is pushing another segment
  // if (on_pushing_in_periodic_mode) { 
  //   std::cout << "*************************************************PUSH_file on_pushing_in_periodic_mode" << std::endl;
  //   return; }

  // push all remaining segments, 
  // during this duration, on_pushing_in_periodic_mode = true
  std::cout << "\n\t[MINH] INFO: " << __FILE__ << ": " << __func__<< "(): " << __LINE__ << std::endl;
  push_remaining_files(res, retrans_check);
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

    // *server_seg = get_time() / segment_duration;

    // get url, e.g. http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=200/num=4/start_seg=5
    // -> segment duration = 1000ms, bitrate = 2000kbps, number of segments = 4, from seg 5th (5, 6, 7, 8).
    // currently, the special symbol & is not allowed in the url
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    if (strs.size() != 6) {
      std::cout << "[ERROR] : url is incorrect" << std::endl;
      std::cout << "[ERROR] : url: " << req.uri().path << std::endl;
      return;
    }

    std::vector<std::string> temp;
    for (int i = 2; i < strs.size(); i++) {
      boost::split(temp, strs[i], boost::is_any_of("="));    
      if (temp[0] == "segment_duration")
        segment_duration = std::stoi(temp[1]);
      else if (temp[0] == "bitrate")
        next_bitrate = std::stoi(temp[1]);
      else if (temp[0] == "num")
        next_num = std::stoi(temp[1]); 
      else if (temp[0] == "start_seg"){
        req_seg_id = std::stoi(temp[1]); // push <nex_num> segments from segment <req_seg_id+1>th
        if (req_seg_id == 0){
          start_time = microsec_clock::local_time();  // count clock again after every session
        }
      }
    }

    // compute the available time instant of the next segment
    auto avail_time = start_time + milliseconds(*server_seg * segment_duration);

    // compute the wait interval to the next available time instant. It may be negative
    auto wait_intv = avail_time - avail_time; //microsec_clock::local_time();

    // call the tick function
    boost::system::error_code ec;

    auto timer = std::make_shared<boost::asio::deadline_timer>(res.io_service(), wait_intv);
    auto closed = std::make_shared<bool>();

    res.on_close([timer, closed](uint32_t error_code) {
      std::cout << "Finished rebuffering !!!" << std::endl;
      timer->cancel();
      *closed = true;
    });
    // timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, false));
    push_file(timer,&res,closed,ec, false);
  });

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  server.handle("/req_vod/", [](const request &req, const response &res) {
    // get url, e.g. http://127.0.0.1:3002/req_vod/segment_duration=1000/bitrate=2000/num=4 -> segment duration = 1000ms, bitrate = 2000kbps, number of segments = 4.
    // currently, the special symbol & is not allowed in the url
    // std::cout << "\nREQ_VOD req.uri().path " << req.uri().path  << " server_seg: " << *server_seg << std::endl;    
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    if (strs.size() != 6) {
      std::cout << "[ERROR] : url is incorrect req_vod " << strs.size() <<  std::endl;
      return;
    }

    std::vector<std::string> temp;
    for (int i = 2; i < strs.size(); i++) {
      boost::split(temp, strs[i], boost::is_any_of("="));    
      if (temp[0] == "segment_duration")
        segment_duration = std::stoi(temp[1]);
      else if (temp[0] == "bitrate")
        next_bitrate = std::stoi(temp[1]);
      else if (temp[0] == "num")
        next_num = std::stoi(temp[1]); 
      else if (temp[0] == "start_seg")
        req_seg_id = std::stoi(temp[1]);  // push <nex_num> segments from segment <req_seg_id+1>th
    }

    // compute the available time instant of the next segment
    auto avail_time = start_time + milliseconds(*server_seg * segment_duration);

    // compute the wait interval to the next available time instant. It may be negative
    auto wait_intv = avail_time - avail_time; //microsec_clock::local_time();

    // call the tick function
    boost::system::error_code ec;

    auto timer = std::make_shared<boost::asio::deadline_timer>(res.io_service(), wait_intv);
    auto closed = std::make_shared<bool>();

    res.on_close([timer, closed](uint32_t error_code) {
      timer->cancel();
      *closed = true;
    });
    std::cout << "\nREQ_VOD req.uri().path " << req.uri().path  << " BEFORE push_file " << *server_seg << std::endl;
    // timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, false));
    push_file(timer,&res,closed,ec, false);
  });

/* 191103 Minh [Kpush with retransmission] ADD-S*/
  server.handle("/retrans/", [](const request &req, const response &res) {
    // get url, e.g. http://127.0.0.1:3002/retrans/bitrate=2000/num=4/start_seg_id=34 ->retrans bitrate = 2000kbps, number of segments = 4, from segment id=34 ==> 34, 35, 36, 37
    // currently, the special symbol & is not allowed in the url
    std::cout << "\nRETRANS req.uri().path " << req.uri().path << std::endl;    
    std::cout << "\nRETRANS server_seg " << *server_seg << std::endl;    
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    if (strs.size() != 5) {
      std::cout << "[ERROR] : url is incorrect" << std::endl;
      return;
    }

    std::vector<std::string> temp;
    for (int i = 2; i < strs.size(); i++) {
      boost::split(temp, strs[i], boost::is_any_of("="));    

      if (temp[0] == "bitrate"){
        retrans_bitrate = std::stoi(temp[1]);
        //std::cout << "\tRETRANS RETRANS bitrate = " << retrans_bitrate << std:: endl;
      } else if (temp[0] == "num"){
        retrans_num = std::stoi(temp[1]);
        retrans_num_decrease = retrans_num;
        //std::cout << "\tRETRANS RETRANS num = " << retrans_num << std:: endl;
      } else{
        retrans_seg_id = std::stoi(temp[1]);
        //std::cout << "\tRETRANS RETRANS seg_id = " << retrans_seg_id << std:: endl;
      }
    }

    // compute the available time instant of the next segment
    auto avail_time = start_time + milliseconds(minh_server_seg * segment_duration);

    // compute the wait interval to the next available time instant. It may be negative
    auto wait_intv = avail_time - avail_time; //microsec_clock::local_time();

    // call the tick function
    boost::system::error_code ec;

    auto timer = std::make_shared<boost::asio::deadline_timer>(res.io_service(), wait_intv);
    auto closed = std::make_shared<bool>();

    res.on_close([timer, closed](uint32_t error_code) {
      timer->cancel();
      *closed = true;
    });
    
   // timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, true));
    push_file(timer,&res,closed,ec, false);
  });

  server.handle("/terminate_segment/", [](const request &request, const response &res) {
    std::cout << "[RECEIVED TERMINATION]" << std::endl;

    squad_terminate_check = true;

    res.write_head(200);
    res.end();
  });
/* 191103 Minh [Kpush with retransmission] ADD-E*/  
  std::string port="3002";
  std::cout << "Listening at the address: " << "172.16.23.1 at port "<< port << std::endl;
  if (server.listen_and_serve(ec, "172.16.23.1", port)) {
    std::cerr << "error: " << ec.message() << std::endl;
  }


  // if (server.listen_and_serve(ec, tls, "localhost", "3002")) {
  //   std::cerr << "error: " << ec.message() << std::endl;
  // }

}
