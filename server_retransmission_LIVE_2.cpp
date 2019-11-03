#include <iostream>
#include <chrono>
#include <thread>
#include <mutex>
#include <boost/algorithm/string.hpp>
#include <boost/bind.hpp>
#include <nghttp2/asio_http2_server.h>
#include <unistd.h>
using namespace nghttp2::asio_http2;
using namespace nghttp2::asio_http2::server;
using namespace boost::posix_time;

bool steady_state=false;
int segment_duration = 1000; // 1000ms
auto avail_seg = std::make_shared<int>();   //la segment hien co tai server
auto server_seg = std::make_shared<int>();  //la segment ma server chuan bi push
auto client_seg = std::make_shared<int>();
const int MAX_SEGMENTS = 251;

bool on_periodic_mode = true; //true: live streaming
bool on_pushing_in_periodic_mode = false;
bool on_steady_stage = false;
/* 191030 Minh [live streaming for retransmission] ADD-S*/
bool retrans_check = false;
std::string retrans_seg_id = "";
std::string  retrans_bitrate = "";
std::string  next_bitrate = "";
/* 191030 Minh [live streaming for retransmission] ADD-E*/

std::chrono::time_point<std::chrono::system_clock> start, end;

void init_new_connection() {
  *avail_seg = 0;

  on_periodic_mode = true;
  on_pushing_in_periodic_mode = false;

  start = std::chrono::system_clock::now();
}

int get_time() {
  end = std::chrono::system_clock::now();
  return std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
}

void print_new_seg(int seg_id, int bitrate, bool retrans_check) {
  if (retrans_check){ // if sendding segment is retransmitted segment
      std::cout << std::endl << "RE-send seg #" << seg_id << " bitrate " << bitrate;
  }
  else{
    if (on_periodic_mode)   //dang push 1s/segment
      std::cout << std::endl << "Push LIVELY seg #" << seg_id << " bitrate " << bitrate;
    else 
      std::cout << std::endl << "Respond seg #" << seg_id << " bitrate " << bitrate;

  }
  std::cout << " at time: " << get_time() << "ms" << std::endl;
}

void push_remaining_files(const response *res,bool retrans_check) {	//Minh: goi ham nay thi moi update STT cua segment
  if (*server_seg + 1 >= MAX_SEGMENTS) {	// Minh: server_seg la segment vua tai xong
    res->write_head(200);
    res->end(file_generator("push.html"));
    return;
  } 
  if (retrans_check){
    print_new_seg(std::stoi(retrans_seg_id),std::stoi(retrans_bitrate), retrans_check);
    boost::system::error_code ec;

    auto push = res->push(ec, "GET", "/seg_"+retrans_seg_id+"_rate_"+retrans_bitrate+"RETRANS"); 

    push->on_close([res](uint32_t error_code) { // khi push xong segment cho client
      if (!error_code){
        std::cout << "RETRANSMITTED seg #" << retrans_seg_id << " bitrate " << retrans_bitrate 
                          << " at time: " << get_time() << "ms" << std::endl << std:: endl; 
      }  
    });

    push->write_head(200);
    push->end(file_generator("./real_cbr/"+std::to_string(segment_duration)+"ms/"+retrans_bitrate));

  }
  else{
    print_new_seg(*server_seg+1,std::stoi(next_bitrate), false);
    boost::system::error_code ec;

    auto push = res->push(ec, "GET", "/seg_"+std::to_string(*server_seg+1)+"_rate_"+next_bitrate); 

    push->on_close([res](uint32_t error_code) { // khi push xong segment cho client
      if (!error_code){
        *server_seg = *server_seg + 1;
        std::cout << "Sent NEW seg #" << *server_seg << " bitrate " << next_bitrate 
                          << " at time: " << get_time() << "ms" << std::endl << std:: endl; 
      }

      if (*server_seg >= *avail_seg) {
        on_periodic_mode = true;
        on_pushing_in_periodic_mode = false;
      } 
      else { //Neu dang co nhieu segment co san 
        on_periodic_mode = false;
        on_pushing_in_periodic_mode = true;
        push_remaining_files(res,false);  // ham truy hoi de push lien tiep nhieu segment ma k can wait()
      }     
    });

    push->write_head(200);
    push->end(file_generator("./real_cbr/"+std::to_string(segment_duration)+"ms/"+next_bitrate));
  }
//////////////////////////////////////////////////////////////////////
  on_pushing_in_periodic_mode = true;
}

void push_file( std::shared_ptr<boost::asio::basic_deadline_timer<boost::posix_time::ptime>> timer, 
                const response *res, std::shared_ptr<bool> closed, boost::system::error_code &ec, bool retrans_check) {
  if (ec || *closed) {
    return;
  }

  if (retrans_check){
    push_remaining_files(res, retrans_check);
  }
  else{
    // Hung_comment: Cai nay chi la dia chi thoi nhe!
    timer->expires_at(timer->expires_at() + boost::posix_time::milliseconds(segment_duration));
    timer->async_wait(boost::bind(push_file, timer, res, closed, ec, retrans_check));

    *avail_seg = *avail_seg + 1;          // generate a new segment every segment duration

    // if the server are pushing another segment
    if (on_pushing_in_periodic_mode) { return; }

    // push all remaining segments, 
    // during this duration, on_pushing_in_periodic_mode = true
    
    push_remaining_files(res, retrans_check);
  }
}

int main(int argc, char *argv[]) {
  boost::system::error_code ec;
  boost::asio::ssl::context tls(boost::asio::ssl::context::sslv23);

//  tls.use_private_key_file("server.key", boost::asio::ssl::context::pem);
//  tls.use_certificate_chain_file("server.crt");
//  configure_tls_context_easy(ec, tls);

  http2 server;
  server.num_threads(10);

  server.handle("/rebuff/", [](const request &req, const response &res) {
    // get url, e.g. http://127.0.0.1:3002/rebuff/2000 -> bitrate = 2000
    // currently, the special symbol & is not allowed in the url
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    next_bitrate = strs[2];

    std::cout << "[JUMP] from segment (C)#" << *client_seg 
              << " and (S)#" << *server_seg 
              << " to segment #" << *avail_seg << std::endl;

    *server_seg = *avail_seg;
    *client_seg = *avail_seg;

    if (!on_steady_stage) {
      init_new_connection();

      boost::system::error_code ec;

      auto timer = std::make_shared<boost::asio::deadline_timer>(res.io_service(), 
                        boost::posix_time::milliseconds(segment_duration));
      auto closed = std::make_shared<bool>();

      res.on_close([timer, closed](uint32_t error_code) {
        timer->cancel();
        *closed = true;
      });

      timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, false));

      on_steady_stage = true;

    } else {
      res.write_head(200);
      res.end("Responded by "+next_bitrate);
    }

  });

  server.handle("/change/", [](const request &req, const response &res) {
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    next_bitrate = strs[2];

    std::cout << "[CONT-CHANGE] segment #" << *server_seg+1 << std::endl;

    res.write_head(200);
    res.end("Responded by "+next_bitrate);
  });
/* 191031 Minh [live streaming for retransmission] DEL-S*/
#if 0  
   server.handle("/steady/", [](const request &req, const response &res) {
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    steady_state=strs[2]=="true"?true:false;

    std::cout << "[STEADY] segment #" << *server_seg+1 <<" "<<strs[2]<< std::endl;

    res.write_head(200);
    res.end("Delay 1 SD");
  });
#endif
/* 191031 Minh [live streaming for retransmission] DEL-E*/
/* 191030 Minh [live streaming for retransmission] ADD-S*/
  server.handle("/retrans/", [](const request &req, const response &res) {
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));

    retrans_bitrate = strs[2];
    retrans_seg_id = strs[3];

    retrans_check = true;

    std::cout << "[RETRANS] segment #" << retrans_seg_id << " bitrate " << retrans_bitrate << std::endl;

    //Goi 1 ham push_file de gui 1 retransmitted segment##########################################################################
    auto avail_time = milliseconds(*server_seg * segment_duration);

    // compute the wait interval to the next available time instant. It may be negative
    auto wait_intv = avail_time - avail_time;

    // call the tick function
    boost::system::error_code ec;

    auto timer = std::make_shared<boost::asio::deadline_timer>(res.io_service(), wait_intv);
    auto closed = std::make_shared<bool>();
      
    push_file(timer,&res,closed,ec, true);
    res.write_head(200);
    res.end("Responded by "+retrans_bitrate);
  });
/* 191030 Minh [live streaming for retransmission] ADD-E*/

  std::string port="3002";
  std::cout << "Listening at the address: " << "192.168.168.1 at port "<<port << std::endl;
  if (server.listen_and_serve(ec, "192.168.168.1", port)) {
    std::cerr << "error: " << ec.message() << std::endl;
  }


}
