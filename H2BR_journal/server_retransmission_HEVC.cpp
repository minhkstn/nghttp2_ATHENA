/*
* Build: g++ -o server_retransmission_HEVC server_retransmission_HEVC.cpp -lnghttp2_asio -lboost_system -std=c++11 -lssl -lcrypto -lpthread
* Run: LD_LIBRARY_PATH=~/HTTP2_src/nghttp2/src/.libs/:~/HTTP2_src/nghttp2/lib/.libs/ ./sever_retransmission_HEVC
*/
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

enum VIDEO {RACENIGHT, BBB};
std::string VIDEO_STRING[2] = {"RACENIGHT", "BBB"};

VIDEO video = RACENIGHT;
int   num_representation = 1; // only for RACTNIGHT: 4 or 12
int   VIDEO_LENGTH = 0; //ms
int   segment_duration = 20000; // 1000ms
int   num_seg_in_video = VIDEO_LENGTH/segment_duration;

int   sum_seg_already_sent = 0;

// auto avail_seg = std::make_shared<int>();
// auto server_seg = std::make_shared<int>();

const int MAX_SEGMENTS = 596000/segment_duration + 1;


bool on_pushing_in_periodic_mode = false;
bool on_steady_stage = false;

/* 191030 Minh [live streaming for retransmission] ADD-S*/
bool          retrans_check = false;
int           num;
int           retrans_seg_id = 0;
int           retrans_bitrate = 0;
int           retrans_num = 0;
int           retrans_num_decrease = 0;
int           next_bitrate = 0;
int           next_num = 0;
int           req_seg_id = 0;
int           minh_server_seg = 0; // useless
int pushing_seg = 0;

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

std::string getFileFromBitrate(int m_bitrate, int m_seg_id, std::string m_first_part_path, std::string m_end_of_name_file){
  std::vector<int> HEVC_RaceNight_12_versions = {145, 300, 600, 900, 1600, 2400, 3400, 4500, 5800, 8100, 11600, 16800};
  std::vector<std::string> resolution = {"640x360", "768x432", "960x540", "960x540", "960x540", "1280x720", "1280x720", "1920x1080", "1920x1080", "2560x1440", "3840x2160", "3840x2160"};
  int version_id = 0;
  for (; version_id < 12; version_id ++){
    if (HEVC_RaceNight_12_versions.at(version_id) == m_bitrate)
      break;
  }

  // std::cout << "bitrate: " << m_bitrate << " Version idx: " << version_id << std::endl;

  // /home/minh/HTTP2_src/server/real_cbr/RaceNight_HEVC_12versions/SD_2000ms/RaceNight_640x360_segment1_bpp12_30fps_HEVC_2s.bin
  std::string output = m_first_part_path + "/SD_" 
                       + std::to_string(segment_duration)+"ms/RaceNight_"
                       + resolution.at(version_id) + "_segment"
                       + std::to_string((m_seg_id-1)%num_seg_in_video+1) + "_bpp"
                       + std::to_string(12-version_id) + "_" + m_end_of_name_file;
  return output;
}

std::string getFilePath(int m_bitrate, int m_seg_id){
  std::string m_file_path;
  std::string m_end_of_name_file;
  std::string first_part_path = "/home/minh/HTTP2_src/server/real_cbr/RaceNight_HEVC_12versions";

  switch(video)
  {
    case RACENIGHT: 
      if (num_representation == 4){
        first_part_path = "/home/minh/HTTP2_src/server/real_cbr/RaceNight_HEVC";

        if(segment_duration == 1000){
        m_end_of_name_file = "30fps_HEVC.bin";
        }
        else {
          m_end_of_name_file = "30fps_HEVC_" + std::to_string(segment_duration/1000)+ "s.bin";
        }

        switch(m_bitrate){
          case 1800:
            m_file_path = first_part_path + "/SD_"+std::to_string(segment_duration)+"ms/bitrate_"
                                  +std::to_string(m_bitrate)+"/RaceNight_720x480_segment"
                                  +std::to_string((m_seg_id-1)%num_seg_in_video+1)+"_bpp1_" + m_end_of_name_file;//"30fps_HEVC.bin";
            break;
          case 5400:
            m_file_path = first_part_path + "/SD_"+std::to_string(segment_duration)+"ms/bitrate_"
                                  +std::to_string(m_bitrate)+"/RaceNight_1280x720_segment"
                                  +std::to_string((m_seg_id-1)%num_seg_in_video+1)+"_bpp2_" + m_end_of_name_file;
            break;
          case 9000:
            m_file_path = first_part_path + "/SD_"+std::to_string(segment_duration)+"ms/bitrate_"
                                  +std::to_string(m_bitrate)+"/RaceNight_1920x1080_segment"
                                  +std::to_string((m_seg_id-1)%num_seg_in_video+1)+"_bpp3_" + m_end_of_name_file;
            break;
          case 18000:
            m_file_path = first_part_path + "/SD_"+std::to_string(segment_duration)+"ms/bitrate_"
                                  +std::to_string(m_bitrate)+"/RaceNight_3840x2160_segment"
                                  +std::to_string((m_seg_id-1)%num_seg_in_video+1)+"_bpp4_" + m_end_of_name_file;
            break;
          default:
            std::cerr << "[ERROR] This quality is not available: " << m_bitrate << std::endl;
            break;
        } 
      }
      else if (num_representation == 12){
        first_part_path = "/home/minh/HTTP2_src/server/real_cbr/RaceNight_HEVC_12versions";
        m_end_of_name_file = "30fps_HEVC_" + std::to_string(segment_duration/1000)+ "s.bin";

        m_file_path =  getFileFromBitrate(m_bitrate, m_seg_id, first_part_path, m_end_of_name_file);

      }
      else{
        std::cerr << "[ERROR] This # of representations is not available: " << num_representation << std::endl;
      }

      break;
    case BBB:
      m_file_path = "/home/minh/HTTP2_src/server/real_cbr/BBB_HEVC/SD_" + 
                    std::to_string(segment_duration) + "ms/" +
                    std::to_string(m_bitrate) + "/bbb_" + 
                    std::to_string(segment_duration/1000) + "sec00" + 
                    std::to_string((m_seg_id-1)%num_seg_in_video + 60000/segment_duration) + ".mp4";
      break;

    default: 
      std::cerr << "This video is not in the server" << std::endl;
      exit(EXIT_FAILURE);  
  }
  // std::cout << "[FILE PATH] " << m_file_path << std::endl;
  return m_file_path;
  
}

void push_remaining_files(const response *res, bool retrans_check) {
  std::cout << "======== Minh === " << __func__ << "(): "<< __LINE__ << std::endl;
  // if (*server_seg + 1 >= MAX_SEGMENTS) {
  //   std::cout << "********************* DONE ******************" << std::endl;
  //   res->write_head(200);
  //   res->end();          
  //   return;
  // } 

  // if (*server_seg > MAX_SEGMENTS - 10){
  //   std::cout << '\a' << std::endl;
  // }

  if (retrans_check){
    pushing_seg = retrans_seg_id + retrans_num - retrans_num_decrease;    

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

    print_new_seg(pushing_seg, retrans_bitrate, retrans_check);
    sum_seg_already_sent++;
    retrans_num_decrease--; 
    // std::cout << "RETRANSING seg remaining: " << retrans_num_decrease << std::endl;
    boost::system::error_code ec;
    auto push = res->push(ec, "GET", "/RETRANS_"+std::to_string(pushing_seg)+"_rate_"+std::to_string(retrans_bitrate)); 

    push->on_close([res](uint32_t error_code) { // khi push xong segment cho client
      std::cout << "============== push->on_close. error_code: " << error_code << std::endl; 
      if (!error_code){
        std::cout << "RETRANSMITTED seg #" << pushing_seg << " bitrate " << retrans_bitrate 
                          << " at time: " << get_time() << "ms" << std::endl << std:: endl; 
      } 
      else if (error_code == 8){ // received the RST_STREAM from the client
        std::cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ TERMINATED seg # " << pushing_seg << std::endl;
        // [200628] Fix segmentation fault when received RST_STREAM frame MOD-S
        /*Minh Terminate only ONE retransmitted segment MOD-S*/
        #if 1 //0        
        /*Minh Terminate all next retransmitted segment ADD-S*/
        retrans_seg_id  = 0;
        retrans_num     = 0;
        retrans_bitrate = 0;
        squad_terminate_check = true;
        // error_code = 0;
        res->write_head(200);
        res->end();    
        return; 

        /*Minh Terminate all next retransmitted segment ADD-E*/
        #else
        push_remaining_files(res, true); 
        #endif
        /*Minh Terminate only ONE retransmitted segment MOD-E*/
        // [200628] Fix segmentation fault when received RST_STREAM frame MOD-E        
      }

      if (retrans_num_decrease == 0){  // is this segment the last one in a retransmission cycle?, 
        retrans_seg_id  = 0;
        retrans_num     = 0;
        retrans_bitrate = 0;        
        on_pushing_in_periodic_mode = false;
        std::cout << "[NOTI] ALl segments in this retransmission cycle have been retransmitted" << std::endl;
        res->write_head(200);
        res->end();
      } 
      else{
        on_pushing_in_periodic_mode = true;
        push_remaining_files(res, true);
      }
    });

    push->write_head(200);
    std::string m_file_path = getFilePath(retrans_bitrate, pushing_seg);
    // std::cout << "\t[INFO] segment dir: " << m_file_path << std::endl;

    push->end(file_generator(m_file_path));
  }
  else{

    if (next_num == 0) { std::cout << "next_num = 0\n"; return; }

    // if (*server_seg > 300){*server_seg = 0;}
    print_new_seg(++req_seg_id, next_bitrate, false);
    sum_seg_already_sent++;
    next_num--;

    boost::system::error_code ec;
    auto push = res->push(ec, "GET", "/seg_"+std::to_string(req_seg_id)+"_rate_"+std::to_string(next_bitrate));
    
    push->on_close([res](uint32_t error_code) {
      std::cout << "******* Minh (0): error_code = " << error_code << std::endl;
      // std::cout << "======================== pushing next segment. error_code: " << error_code << std::endl;
      // if (!error_code) {                    // if CANCEL is not sent
      //   *server_seg = *server_seg + 1;
      //   std::cout << "Sent seg #" << *server_seg << " bitrate " << next_bitrate 
      //                     << " at time: " << get_time() << "ms" << std::endl;
      // }
      std::cout << "Sent seg #" << req_seg_id << " bitrate " << next_bitrate 
                                << " at time: " << get_time() << "ms\n" << std::endl;

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

    std::string m_file_path = getFilePath(next_bitrate, req_seg_id);

    push->end(file_generator(m_file_path)); 

  }


  on_pushing_in_periodic_mode = true;
}

void push_file(
    std::shared_ptr<boost::asio::basic_deadline_timer<ptime>> timer, 
    const response *res, std::shared_ptr<bool> closed, boost::system::error_code &ec, bool retrans_check) {
  if (ec || *closed) {
    std::cout << "[ERROR] Minh\n";
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



  switch(video){
    case RACENIGHT:
      VIDEO_LENGTH = 12000; //ms
      std::cout << "\nIf RACENIGHT video, How many representations? (4, 12)\n";
      std::cin >> num_representation;      
      break;
    case BBB:
      VIDEO_LENGTH = 60000; //ms
      break;
    default:
      std::cerr << "No available video" << std::endl;
      exit(EXIT_FAILURE);
      break;
  }

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

    /* request example: ip:port/req_vod/sd=1000/bitrate=1000/num=4/start_seg=10 
    ** ==> download segments with Segment duration = 1000ms, bitate: 1000 kbps, # segments: 4 (i.e., segments 10, 11, 12, 13)
    */
    std::cout << "\nREQ_BUFF req.uri().path " << req.uri().path << std::endl;   

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
      if (temp[0] == "sd")
        segment_duration = std::stoi(temp[1]);
      else if (temp[0] == "bitrate")
        next_bitrate = std::stoi(temp[1]);
      else if (temp[0] == "num")
        next_num = std::stoi(temp[1]); 
      else if (temp[0] == "start_seg"){
        req_seg_id = std::stoi(temp[1]) -1; // push <nex_num> segments from segment <req_seg_id+1>th
        if (req_seg_id == 0){
          start_time = microsec_clock::local_time();  // count clock again after every session
          sum_seg_already_sent = 0;
        }
      }
    }
    num_seg_in_video = (VIDEO_LENGTH % segment_duration == 0) ? (VIDEO_LENGTH / segment_duration) : ( (int) VIDEO_LENGTH / segment_duration +1);

    // std::cout << "\tREQ_BUFF Num_seg_in_video: " << num_seg_in_video << std::endl;

    // compute the available time instant of the next segment
    auto avail_time = start_time + milliseconds(sum_seg_already_sent * segment_duration);

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

    // timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, false));
    push_file(timer,&res,closed,ec, false);
  });

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  server.handle("/req_vod/", [](const request &req, const response &res) {
    // get url, e.g. http://127.0.0.1:3002/req_vod/bitrate=2000/num=4 -> bitrate = 2000kbps, number of segments = 4.
    // currently, the special symbol & is not allowed in the url
    std::cout << "\nREQ_VOD req.uri().path " << req.uri().path << std::endl;    
    std::vector<std::string> strs;
    boost::split(strs, req.uri().path, boost::is_any_of("/"));
    if (strs.size() != 6) {
      std::cout << "[ERROR] : url is incorrect req_vod " << strs.size() <<  std::endl;
      return;
    }

    std::vector<std::string> temp;
    for (int i = 2; i < strs.size(); i++) {
      boost::split(temp, strs[i], boost::is_any_of("="));    
      if (temp[0] == "sd"){
        segment_duration = std::stoi(temp[1]);
        std::cout << "\tVOD sd = " << segment_duration << std:: endl;
      }
      else if (temp[0] == "bitrate"){
        next_bitrate = std::stoi(temp[1]);
        std::cout << "\tVOD bitrate = " << next_bitrate << std:: endl;
      }
      else if (temp[0] == "num"){
        next_num = std::stoi(temp[1]);
        std::cout << "\tVOD num = " << next_num << std:: endl; 
      }
      else if (temp[0] == "start_seg"){
        req_seg_id = std::stoi(temp[1]) - 1; 
        std::cout << "\tVOD start_seg = " << req_seg_id << std:: endl;
      }
    }
    num_seg_in_video = (VIDEO_LENGTH % segment_duration == 0) ? (VIDEO_LENGTH / segment_duration) : ( (int) VIDEO_LENGTH / segment_duration +1);

    // std::cout << "\tNum_seg_in_video: " << num_seg_in_video << std::endl;

    // compute the available time instant of the next segment
    auto avail_time = start_time + milliseconds(sum_seg_already_sent * segment_duration);

    // compute the wait interval to the next available time instant. It may be negative
    auto wait_intv = avail_time - microsec_clock::local_time();

    // call the tick function
    boost::system::error_code ec;

    auto timer = std::make_shared<boost::asio::deadline_timer>(res.io_service(), wait_intv);
    auto closed = std::make_shared<bool>();

    res.on_close([timer, closed](uint32_t error_code) {
      std::cout << "======== Minh === " << __func__ << "(): "<< __LINE__ << std::endl;
      timer->cancel();
      *closed = true;
    });
    // timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, false));
    push_file(timer,&res,closed,ec, false);
  });

/* 191103 Minh [Kpush with retransmission] ADD-S*/
  server.handle("/retrans/", [](const request &req, const response &res) {
    // get url, e.g. http://127.0.0.1:3002/retrans/bitrate=2000/num=4/start_seg_id=34 ->retrans bitrate = 2000kbps, number of segments = 4, from segment id=34 ==> 34, 35, 36, 37
    // currently, the special symbol & is not allowed in the url
    squad_terminate_check = false;
    std::cout << "\nRETRANS req.uri().path " << req.uri().path << std::endl;    
    // std::cout << "\nRETRANS server_seg " << *server_seg << std::endl;    
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
        std::cout << "\tRETRANS RETRANS bitrate = " << retrans_bitrate << std:: endl;
      } else if (temp[0] == "num"){
        retrans_num = std::stoi(temp[1]);
        retrans_num_decrease = retrans_num;
        std::cout << "\tRETRANS RETRANS num = " << retrans_num << std:: endl;
      } else{
        retrans_seg_id = std::stoi(temp[1]);
        std::cout << "\tRETRANS RETRANS seg_id = " << retrans_seg_id << std:: endl;
      }
    }

    // compute the available time instant of the next segment
    auto avail_time = start_time + milliseconds(sum_seg_already_sent * segment_duration);

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
    
   // timer->async_wait(boost::bind(push_file, timer, &res, closed, ec, true));
    push_file(timer,&res,closed,ec, true);
  });

  server.handle("/terminate_segment/", [](const request &request, const response &res) {
    std::cout << "[RECEIVED TERMINATION]" << std::endl;

    // squad_terminate_check = true;

    res.write_head(200);
    res.end();
  });
/* 191103 Minh [Kpush with retransmission] ADD-E*/  
  std::string port= "3002";
  std::string ip = "172.16.137.1";
  std::cout << "Listening at the address: " << ip << " at port " << port 
            << "\n Video: " << VIDEO_STRING[video] 
            << " with segment duration: " << segment_duration << "ms"<< std::endl;
  std::cout << "Retransmission supported for H2BR" << std::endl;

  if (server.listen_and_serve(ec, ip, port)) {
    std::cerr << "error: " << ec.message() << std::endl;
  }
}
