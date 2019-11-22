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

int num;

int segment_duration = 1000; // 1000ms
auto avail_seg = std::make_shared<int>();
auto server_seg = std::make_shared<int>();
const int MAX_SEGMENTS = 601;

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
     std::cout << std::endl << "Respond seg #" << seg_id << " bitrate " << bitrate;
    std::cout << " at time: " << get_time() << "ms" << std::endl;   
  }
}

void push_remaining_files(const response *res, bool retrans_check) {
  if (*server_seg + 1 >= MAX_SEGMENTS) {
    std::cout << "********************* DONE ******************" << std::endl;
    res->write_head(200);
    res->end();
    return;
  } 

  // if all required segments were pushed. Note that it must not combined 
  // with the previous instruction
  if (retrans_check){
    int pushing_seg = retrans_seg_id + retrans_num - retrans_num_decrease;    
    if (retrans_num_decrease == 0 || squad_terminate_check) { // retransmitted completely
        
        if (squad_terminate_check){
          std::cout << "CANCELLED RETRANSMISISON" << std::endl;
        }
        retrans_seg_id  = 0;
        retrans_num     = 0;
        retrans_bitrate = 0;
        squad_terminate_check = false;

        res->write_head(200);
        res->end();
        return; 
    } 

    std::cout << "[Minh] Prepare to send seg " << pushing_seg << std::endl;
    print_new_seg(pushing_seg, retrans_bitrate, retrans_check);
    retrans_num_decrease--; 
    // std::cout << "RETRANSING seg remaining: " << retrans_num_decrease << std::endl;
    boost::system::error_code ec;

    auto push = res->push(ec, "GET", "/RETRANS_"+std::to_string(pushing_seg)+"_rate_"+std::to_string(retrans_bitrate)); 

    push->on_close([res](uint32_t error_code) { // khi push xong segment cho client
      if (!error_code){

        std::cout << "RETRANSMITTED seg #" << retrans_seg_id + retrans_num - retrans_num_decrease - 1 << " bitrate " << retrans_bitrate 
                          << " at time: " << get_time() << "ms" << std::endl << std:: endl; 
      } 

      if (retrans_num_decrease == 0){  // check xem day co phai segmet cuoi cung k, 
        retrans_seg_id  = 0;
        retrans_num     = 0;
        retrans_bitrate = 0;        
        on_pushing_in_periodic_mode = false;
        res->write_head(200);
        res->end();
      } 
      else{
        on_pushing_in_periodic_mode = true;
        push_remaining_files(res, true);
      }
    });

    push->write_head(200);
    push->end(file_generator("./real_cbr/"+std::to_string(segment_duration)+"ms/"+std::to_string(retrans_bitrate)));

  }
  else{

    if (next_num == 0) { return; }

    print_new_seg(*server_seg+1, next_bitrate, false);
    next_num--;

    boost::system::error_code ec;
    auto push = res->push(ec, "GET", "/seg_"+std::to_string(*server_seg+1)+"_rate_"+std::to_string(next_bitrate));

    push->on_close([res](uint32_t error_code) {
      if (!error_code) {                    // if CANCEL is not sent
        *server_seg = *server_seg + 1;
        std::cout << "Sent seg #" << *server_seg << " bitrate " << next_bitrate 
                          << " at time: " << get_time() << "ms" << std::endl;
      }

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
    push->end(file_generator("./real_cbr/"+std::to_string(segment_duration)+"ms/"+std::to_string(next_bitrate)));
  }


  on_pushing_in_periodic_mode = true;
}

void push_file(                                 ////////////////////////////////////////////////////////////// continue here to fix SEGMENTATION FAULT 
    std::shared_ptr<boost::asio::basic_deadline_timer<ptime>> timer, 
    const response *res, std::shared_ptr<bool> closed, boost::system::error_code &ec, bool retrans_check) {
  if (ec || *closed) {
    return;
  }

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
        next_bitrate = std::stoi(temp[1]);
      else
        next_num = std::stoi(temp[1]);
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

    timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, false));
  });

  server.handle("/req_vod/", [](const request &req, const response &res) {
    // get url, e.g. http://127.0.0.1:3002/req_vod/bitrate=2000/num=4 -> bitrate = 2000kbps, number of segments = 4.
    // currently, the special symbol & is not allowed in the url
    // std::cout << "\nREQ_VOD req.uri().path " << req.uri().path  << " server_seg: " << *server_seg << std::endl;    
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    if (strs.size() != 4) {
      std::cout << "[ERROR] : url is incorrect req_vod " << strs.size() <<  std::endl;
      return;
    }

    std::vector<std::string> temp;
    for (int i = 2; i < strs.size(); i++) {
      boost::split(temp, strs[i], boost::is_any_of("="));      
      if (temp[0] == "bitrate")
        next_bitrate = std::stoi(temp[1]);
      else
        next_num = std::stoi(temp[1]);
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
    // std::cout << "\nREQ_VOD req.uri().path " << req.uri().path  << " BEFORE push_file " << *server_seg << std::endl;
    //timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, false));
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
    push_file(timer,&res,closed,ec, true);
  });

  server.handle("/terminate_segment/", [](const request &request, const response &res) {
    std::cout << "[RECEIVED TERMINATION]" << std::endl;

    squad_terminate_check = true;

    res.write_head(200);
    res.end();
  });
/* 191103 Minh [Kpush with retransmission] ADD-E*/  
  std::string port="3002";
  std::cout << "Listening at the address: " << "192.168.168.1 at port "<<port << std::endl;
  if (server.listen_and_serve(ec, "192.168.168.1", port)) {
    std::cerr << "error: " << ec.message() << std::endl;
  }


  // if (server.listen_and_serve(ec, tls, "localhost", "3002")) {
  //   std::cerr << "error: " << ec.message() << std::endl;
  // }

}
