/* LD_LIBRARY_PATH=~/HTTP2_src/nghttp2/src/.libs/:~/HTTP2_src/nghttp2/lib/.libs/ ./server_retransmission_HEVC
 * nghttp2 - HTTP/2 C Library
 *
 * Copyright (c) 2013 Tatsuhiro Tsujikawa
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
 * LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
#include "nghttp.h"

#include <sys/stat.h>
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif // HAVE_UNISTD_H
#ifdef HAVE_FCNTL_H
#include <fcntl.h>
#endif // HAVE_FCNTL_H
#ifdef HAVE_NETINET_IN_H
#include <netinet/in.h>
#endif // HAVE_NETINET_IN_H
#include <netinet/tcp.h>
#include <getopt.h>

#include <cassert>
#include <cstdio>
#include <cerrno>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <iomanip>
#include <sstream>
#include <tuple>
#include <vector>
#include <time.h>

#include <openssl/err.h>

#ifdef HAVE_JANSSON
#include <jansson.h>
#endif // HAVE_JANSSON

#include "app_helper.h"
#include "HtmlParser.h"
#include "util.h"
#include "base64.h"
#include "ssl.h"
#include "template.h"
#include <fstream>
#include <boost/bind.hpp>
#include <unistd.h>
//#include <chrono>
//#include <thread>
//#include <mutex>
#include <boost/algorithm/string.hpp>
// #include <boost/bind.hpp>
//#include <nghttp2/asio_http2_server.h>
#ifndef O_BINARY
#define O_BINARY (0)
#endif // O_BINARY

#define MAX(a, b) ((a) <= (b) ? (b) : (a))
#define MIN(a, b) ((a) >= (b) ? (b) : (a))
using namespace std;
//using namespace boost::posix_time;
namespace nghttp2 {

// The anchor stream nodes when --no-dep is not used.  The stream ID =
// 1 is excluded since it is used as first stream in upgrade case.  We
// follows the same dependency anchor nodes as Firefox does.
struct Anchor {
  int32_t stream_id;
  // stream ID this anchor depends on
  int32_t dep_stream_id;
  // .. with this weight.
  int32_t weight;
};

// This is index into anchors.  Firefox uses ANCHOR_FOLLOWERS for html
// file.
enum {
  ANCHOR_LEADERS,
  ANCHOR_UNBLOCKED,
  ANCHOR_BACKGROUND,
  ANCHOR_SPECULATIVE,
  ANCHOR_FOLLOWERS,
};

namespace {
constexpr auto anchors = std::array<Anchor, 5>{{
    {3, 0, 201}, {5, 0, 101}, {7, 0, 1}, {9, 7, 1}, {11, 3, 1},
}};
} // namespace

Config::Config()
    : header_table_size(-1),
      min_header_table_size(std::numeric_limits<uint32_t>::max()),
      encoder_header_table_size(-1),
      padding(0),
      max_concurrent_streams(100),
      peer_max_concurrent_streams(100),
      multiply(1),
      timeout(0.),
      window_bits(-1),
      connection_window_bits(-1),
      verbose(0),
      null_out(false),
      remote_name(false),
      get_assets(false),
      stat(false),
      upgrade(false),
      continuation(false),
      no_content_length(false),
      no_dep(false),
      hexdump(false),
      no_push(false),
      expect_continue(false) {
  nghttp2_option_new(&http2_option);
  nghttp2_option_set_peer_max_concurrent_streams(http2_option,
                                                 peer_max_concurrent_streams);
  nghttp2_option_set_builtin_recv_extension_type(http2_option, NGHTTP2_ALTSVC);
}

Config::~Config() { nghttp2_option_del(http2_option); }

namespace {
Config config;
} // namespace

namespace {
void print_protocol_nego_error() {
  std::cerr << "[ERROR] HTTP/2 protocol was not selected."
            << " (nghttp2 expects " << NGHTTP2_PROTO_VERSION_ID << ")"
            << std::endl;
}
} // namespace

namespace {
std::string strip_fragment(const char *raw_uri) {
  const char *end;
  for (end = raw_uri; *end && *end != '#'; ++end)
    ;
  size_t len = end - raw_uri;
  return std::string(raw_uri, len);
}
} // namespace

Request::Request(const std::string &uri, const http_parser_url &u,
                 const nghttp2_data_provider *data_prd, int64_t data_length,
                 const nghttp2_priority_spec &pri_spec, int level)
    : uri(uri),
      u(u),
      pri_spec(pri_spec),
      data_length(data_length),
      data_offset(0),
      response_len(0),
      inflater(nullptr),
      html_parser(nullptr),
      data_prd(data_prd),
      header_buffer_size(0),
      stream_id(-1),
      status(0),
      level(level),
      expect_final_response(false) {
  http2::init_hdidx(res_hdidx);
  http2::init_hdidx(req_hdidx);
}

Request::~Request() {
  nghttp2_gzip_inflate_del(inflater);
  delete html_parser;
}

void Request::init_inflater() {
  int rv;
  rv = nghttp2_gzip_inflate_new(&inflater);
  assert(rv == 0);
}

void Request::init_html_parser() { html_parser = new HtmlParser(uri); }

int Request::update_html_parser(const uint8_t *data, size_t len, int fin) {
  if (!html_parser) {
    return 0;
  }
  return html_parser->parse_chunk(reinterpret_cast<const char *>(data), len,
                                  fin);
}

std::string Request::make_reqpath() const {
  std::string path = util::has_uri_field(u, UF_PATH)
                         ? util::get_uri_field(uri.c_str(), u, UF_PATH).str()
                         : "/";
  if (util::has_uri_field(u, UF_QUERY)) {
    path += '?';
    path.append(uri.c_str() + u.field_data[UF_QUERY].off,
                u.field_data[UF_QUERY].len);
  }
  return path;
}

namespace {
// Perform special handling |host| if it is IPv6 literal and includes
// zone ID per RFC 6874.
std::string decode_host(const StringRef &host) {
  auto zone_start = std::find(std::begin(host), std::end(host), '%');
  if (zone_start == std::end(host) ||
      !util::ipv6_numeric_addr(
          std::string(std::begin(host), zone_start).c_str())) {
    return host.str();
  }
  // case: ::1%
  if (zone_start + 1 == std::end(host)) {
    return StringRef{host.c_str(), host.size() - 1}.str();
  }
  // case: ::1%12 or ::1%1
  if (zone_start + 3 >= std::end(host)) {
    return host.str();
  }
  // If we see "%25", followed by more characters, then decode %25 as
  // '%'.
  auto zone_id_src = (*(zone_start + 1) == '2' && *(zone_start + 2) == '5')
                         ? zone_start + 3
                         : zone_start + 1;
  auto zone_id = util::percent_decode(zone_id_src, std::end(host));
  auto res = std::string(std::begin(host), zone_start + 1);
  res += zone_id;
  return res;
}
} // namespace

namespace {
nghttp2_priority_spec resolve_dep(int res_type) {
  nghttp2_priority_spec pri_spec;

  if (config.no_dep) {
    nghttp2_priority_spec_default_init(&pri_spec);

    return pri_spec;
  }

  int32_t anchor_id;
  int32_t weight;
  switch (res_type) {
  case REQ_CSS:
  case REQ_JS:
    anchor_id = anchors[ANCHOR_LEADERS].stream_id;
    weight = 32;
    break;
  case REQ_UNBLOCK_JS:
    anchor_id = anchors[ANCHOR_UNBLOCKED].stream_id;
    weight = 32;
    break;
  case REQ_IMG:
    anchor_id = anchors[ANCHOR_FOLLOWERS].stream_id;
    weight = 12;
    break;
  default:
    anchor_id = anchors[ANCHOR_FOLLOWERS].stream_id;
    weight = 32;
  }

  nghttp2_priority_spec_init(&pri_spec, anchor_id, weight, 0);
  return pri_spec;
}
} // namespace

bool Request::is_ipv6_literal_addr() const {
  if (util::has_uri_field(u, UF_HOST)) {
    return memchr(uri.c_str() + u.field_data[UF_HOST].off, ':',
                  u.field_data[UF_HOST].len);
  } else {
    return false;
  }
}

Headers::value_type *Request::get_res_header(int32_t token) {
  auto idx = res_hdidx[token];
  if (idx == -1) {
    return nullptr;
  }
  return &res_nva[idx];
}

Headers::value_type *Request::get_req_header(int32_t token) {
  auto idx = req_hdidx[token];
  if (idx == -1) {
    return nullptr;
  }
  return &req_nva[idx];
}

void Request::record_request_start_time() {
  timing.state = RequestState::ON_REQUEST;
  timing.request_start_time = get_time();
}

void Request::record_response_start_time() {
  timing.state = RequestState::ON_RESPONSE;
  timing.response_start_time = get_time();
}

void Request::record_response_end_time() {
  timing.state = RequestState::ON_COMPLETE;
  timing.response_end_time = get_time();
}

namespace {
void continue_timeout_cb(struct ev_loop *loop, ev_timer *w, int revents) {
  auto client = static_cast<HttpClient *>(ev_userdata(loop));
  auto req = static_cast<Request *>(w->data);
  int error;

  error = nghttp2_submit_data(client->session, NGHTTP2_FLAG_END_STREAM,
                              req->stream_id, req->data_prd);

  if (error) {
    std::cerr << "[ERROR] nghttp2_submit_data() returned error: "
              << nghttp2_strerror(error) << std::endl;
    nghttp2_submit_rst_stream(client->session, NGHTTP2_FLAG_NONE,
                              req->stream_id, NGHTTP2_INTERNAL_ERROR);
  }

  client->signal_write();
}
} // namespace

ContinueTimer::ContinueTimer(struct ev_loop *loop, Request *req) : loop(loop) {
  ev_timer_init(&timer, continue_timeout_cb, 1., 0.);
  timer.data = req;
}

ContinueTimer::~ContinueTimer() { stop(); }

void ContinueTimer::start() { ev_timer_start(loop, &timer); }

void ContinueTimer::stop() { ev_timer_stop(loop, &timer); }

void ContinueTimer::dispatch_continue() {
  // Only dispatch the timeout callback if it hasn't already been called.
  if (ev_is_active(&timer)) {
    ev_feed_event(loop, &timer, 0);
  }
}

namespace {
int htp_msg_begincb(http_parser *htp) {
  if (config.verbose) {
    print_timer();
    std::cout << " HTTP Upgrade response" << std::endl;
  }
  return 0;
}
} // namespace

namespace {
int htp_statuscb(http_parser *htp, const char *at, size_t length) {
  auto client = static_cast<HttpClient *>(htp->data);
  client->upgrade_response_status_code = htp->status_code;
  return 0;
}
} // namespace

namespace {
int htp_msg_completecb(http_parser *htp) {
  auto client = static_cast<HttpClient *>(htp->data);
  client->upgrade_response_complete = true;
  return 0;
}
} // namespace

namespace {
http_parser_settings htp_hooks = {
    htp_msg_begincb,   // http_cb      on_message_begin;
    nullptr,           // http_data_cb on_url;
    htp_statuscb,      // http_data_cb on_status;
    nullptr,           // http_data_cb on_header_field;
    nullptr,           // http_data_cb on_header_value;
    nullptr,           // http_cb      on_headers_complete;
    nullptr,           // http_data_cb on_body;
    htp_msg_completecb // http_cb      on_message_complete;
};
} // namespace

namespace {
int submit_request(HttpClient *client, const Headers &headers, Request *req) {
  auto path = req->make_reqpath();
  auto scheme = util::get_uri_field(req->uri.c_str(), req->u, UF_SCHEMA);
  auto build_headers = Headers{{":method", req->data_prd ? "POST" : "GET"},
                               {":path", path},
                               {":scheme", scheme.str()},
                               {":authority", client->hostport},
                               {"accept", "*/*"},
                               {"accept-encoding", "gzip, deflate"},
                               {"user-agent", "nghttp2/" NGHTTP2_VERSION}};
  bool expect_continue = false;

  if (config.continuation) {
    for (size_t i = 0; i < 6; ++i) {
      build_headers.emplace_back("continuation-test-" + util::utos(i + 1),
                                 std::string(4_k, '-'));
    }
  }

  auto num_initial_headers = build_headers.size();

  if (req->data_prd) {
    if (!config.no_content_length) {
      build_headers.emplace_back("content-length",
                                 util::utos(req->data_length));
    }
    if (config.expect_continue) {
      expect_continue = true;
      build_headers.emplace_back("expect", "100-continue");
    }
  }

  for (auto &kv : headers) {
    size_t i;
    for (i = 0; i < num_initial_headers; ++i) {
      if (kv.name == build_headers[i].name) {
        build_headers[i].value = kv.value;
        break;
      }
    }
    if (i < num_initial_headers) {
      continue;
    }

    build_headers.emplace_back(kv.name, kv.value, kv.no_index);
  }

  auto nva = std::vector<nghttp2_nv>();
  nva.reserve(build_headers.size());

  for (auto &kv : build_headers) {
    nva.push_back(http2::make_nv(kv.name, kv.value, kv.no_index));
  }

  auto method = http2::get_header(build_headers, ":method");
  assert(method);

  req->method = method->value;

  std::string trailer_names;
  if (!config.trailer.empty()) {
    trailer_names = config.trailer[0].name;
    for (size_t i = 1; i < config.trailer.size(); ++i) {
      trailer_names += ", ";
      trailer_names += config.trailer[i].name;
    }
    nva.push_back(http2::make_nv_ls("trailer", trailer_names));
  }

  int32_t stream_id;

  if (expect_continue) {
    stream_id = nghttp2_submit_headers(client->session, 0, -1, &req->pri_spec,
                                       nva.data(), nva.size(), req);
  } else {
    stream_id =
        nghttp2_submit_request(client->session, &req->pri_spec, nva.data(),
                               nva.size(), req->data_prd, req);
  }

  if (stream_id < 0) {
    std::cerr << "[ERROR] nghttp2_submit_"
              << (expect_continue ? "headers" : "request")
              << "() returned error: " << nghttp2_strerror(stream_id)
              << std::endl;
    return -1;
  }

  req->stream_id = stream_id;
  client->request_done(req);

  req->req_nva = std::move(build_headers);

  if (expect_continue) {
    auto timer = make_unique<ContinueTimer>(client->loop, req);
    req->continue_timer = std::move(timer);
  }

  return 0;
}
} // namespace

// Hung: commons
enum ABR {AGG, SARA, BBA};
enum RETRANSMISSION_METHOD {NONE, PROPOSAL, SQUAD};
enum est_thrp_mode  {LAST_THRP, LOWER_BOUND};
enum TRACE_MODE     {TRACE_3G, TRACE_4G, TRACE_5G};
enum VIDEO          {RACENIGHT, BBB};
const string ABR_STRING[] {
  "AGG", "SARA", "BBA"
};
const string RETRANS_METHOD_STRING[] = {
  "NONE", "PROPOSAL", "SQUAD"
};
const string H2BR_MODE_STRING[] = {
  "STANDARD", "OPTIMIZATION"
};
const string TRACE_STRING[] = {
  "3G", "4G", "5G"
};
const string VIDEO_STRING[] = {
  "RACENIGHT", "BBB"
};

TRACE_MODE              minh_trace_mode = TRACE_4G;

static double   start_play_time = 0;
// static bool     stall_while_downloading = FALSE;
static long     stall_duration_before_update = 0;

VIDEO     video = RACENIGHT;

const int NUM_SEG_CONSIDERED = 300;

int       hung_sd = 1000; //ms
int       hung_MAX_SEGMENTS = 300000/hung_sd;

RETRANSMISSION_METHOD   minh_retransmission_method = PROPOSAL;
ABR                     minh_ABR = AGG;
bool                    minh_retrans_extension = true;
bool                    minh_optimize_bitrate = false;
bool                    minh_rebuff_sent = false;
int                     minh_retrans_data = 0;  // in kBytes
int                     minh_next_data = 0;     // in kBytes
int             num_success_retrans = 0;
double          amount_waste_data = 0;

// SARA ABR -S
int I = 0; //2*hung_sd; // act as the buffer enough to start playing
int B_a = 0; //10*hung_sd;
int B_b = 0; //15*hung_sd;
int B_m = 0; //17*hung_sd;

long    harmonic_sum_TS = 0;
double  harmonic_sum_MS = 0;
int     last_seg_data = 0;
double  SARA_buff_thres = 0;
// SARA ABR -E

// BBA ABR -S
int             BBA_r = 0; //5*hung_sd;
int             BBA_cu = 0; //15*hung_sd;
int             BBA_Max = 0; //22*hung_sd;
double                f_buff_value = 0;
double                BBA_buff_thres = 0;
// BBA ABR -E

// Hung: for clocks
int hung_sys_time = 0;
int hung_last_adapt_time = 0;
int hung_client_seg = 0;

// Hung: temporary store => don't understand why
std::string           hung_uri;
nghttp2_data_provider *hung_data_prd;
int64_t               hung_data_length;
nghttp2_priority_spec hung_pri_spec;
Headers               hung_headers;

// Hung: measurement
int               hung_tar_buff = -1; //B_m; // this is used in algorithm. stop rebuffering for AGG ABR
int               buff_max = -1;  // 191103 this is max buffer size
int               rebuff_buff_thres_L = 0; 
int               rebuff_buff_thres_H = 0; 
int               vod_buff_thres_L = 0;
int               vod_buff_thres_H = 0;
bool              hung_on_buffering = true;
int               minh_cur_seg_id = 1;
int               minh_max_next_seg_id = 0;

// BBB video, SD = 1s
std::vector<int> hung_rate_set_1s = {47, 92, 135, 182, 226, 270, 353, 425, 538, 621, 808, 1100, 1300, 1700, 2200, 2600, 3300, 3800, 4200, 4700}; // BBB video, SD = 1s
std::vector<int> hung_rate_set_2s = {46, 89, 131, 178, 222, 263, 334, 396, 522, 595, 791, 1000, 1200, 1500, 2100, 2500, 3100, 3500, 3800, 4200}; // BBB video, SD = 2s
std::vector<int> hung_rate_set_4s = {45, 89, 129, 177, 218, 256, 323, 378, 509, 578, 783, 1000, 1200, 1500, 2100, 2400, 2900, 3300, 3600, 3900}; //BBB video, SD = 4s
std::vector<int> hung_rate_set_6s = {46, 89, 128, 177, 218, 255, 321, 374, 506, 573, 780, 1000, 1200, 1500, 2100, 2400, 2900, 3300, 3600, 3900}; // BBB video, SD = 6s

// HEVC RaceNight video, SD = 1s
std::vector<int> HEVC_RaceNight_1s = {1800, 5400, 9000, 18000}; // HEVC video, SD = 1s
std::vector<int> HEVC_RaceNight_12_versions = {145, 300, 600, 900, 1600, 2400, 3400, 4500, 5800, 8100, 11600, 16800};
std::vector<int> HEVC_BBB = {100, 200, 240, 375, 550, 750, 1000, 1500, 2300, 3000, 4300, 5800, 6500, 7000, 7500, 8000, 12000, 17000, 20000};

std::vector<int> hung_rate_set;// = {1, 2, 3, 4, 5, 6, 7 ,8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}; 

double           hung_inst_thrp = 1000;
int              hung_cur_buff = 0; 
double           hung_safety_margin = 0.1;

/* 191028 Minh [streaming for retransmission] ADD-S*/
bool                retrans_check = false;
bool                retrans_received = true;
bool                retrans_transmitting = false; // = false if NO reretransmitting or retransmitted the last seg_id
bool                retrans_transmitting_period = false;  // = false if no retransmitting or transmitted the last seg (nornam or retransmitted seg)
bool                termination_trigger = false;
bool                termination_finish = true;
bool                playout_start = false;
bool                rebuffering_while_download = false;

long                playout_start_time = 0;


int                 rebuf_num = 0;

int                 retrans_next_id = 0;
int                 retrans_rate = 0;
int                 retrans_num = 1;
int                 retrans_retransmitted_seg_id = 0;
int                 retrans_num_termination = 0;
double              retrans_avgBuffer = 0;
const int           retrans_avgBuffer_period = 5; // consider the last 20 segments
int                 retrans_buff_thres = 100000;
int                 retrans_buff_trigger_on = 100000;
int                 retrans_buff_cancel = 100000;

const int           buff_high = 15000;
const int           buff_low  = 10000;
const int           buff_min  = 5000;
int                 retrans_switch_thres = 0;
bool                buffering_just_stop = false;
std::vector<double> retrans_buffer_recorder;

bool                minh_retrans_trigger = false;
int                 minh_rebuff_exit = 0;
int                 pri_new_rate = 1;
int                 pri_retrans_rate = 1;

int                 next_num = 1;

std::vector<int>    minh_rate_recorder; // record the bitrate of
std::vector<int>    retrans_retransmitted_seg_recorder;
std::vector<int>    minh_next_num_recorder;
std::vector<int>    minh_retrans_num_recorder;
std::vector<int>    minh_thrp_est_recorder;
std::vector<int>    minh_thrp_measured_recorder;
std::vector<int>    minh_rate_old_id_recorder;
std::vector<int>    minh_rate_ret_id_recorder;
std::vector<int>    minh_rebuff_duration_recorder;
std::vector<int>    minh_retrans_terminated_seg_recorder;

std::vector<int>    minh_data_downloaded_recorder; // data of each segment at the firt download time (not after retransmission)

// for stall event
std::vector<int>    minh_stall_start_time;
std::vector<double> stall_time_duration_vector;
std::vector<double> stall_time_stamp;

double              stall_duration = 0;

long                minh_rebuff_start = 0;
int                 minh_rebuff_duration = 0;

int                 needed_retrans_seg_id = 0; // count segment id from 1
bool                found_rates = false;
int                     minh_packet_loss = 0;

nghttp2_data_provider *dang_data_prd;
int64_t               dang_data_length;
Headers               dang_headers;
std::string           dang_uri;
nghttp2_priority_spec dang_pri_spec;

std::vector<int>      retrans_seg_id_recorder;
double                thrp_est = 0;
double                division_retrans_seg_margin = 0.05;
double                division_retrans_buff_margin = 0;
std::vector<double>   retrans_thrp_recorder;
std::vector<double>   normal_thrp_recorder;
std::vector<int>      origin_thrp;
double                duc_req_count = 2;
int                   duc_buff_low = 8000;
double                alpha = 0.6;
double                condition_thres = 1.0;
int                   retrans_stream_id = 0;

int                   squad_retransmitting_seg_idx = 0;
const int             SQUAD_IP_PACKET_MAX = 50;
bool                  squad_end_stream = false; // if TRUE ==> on a stream, squad_ip_packet++. Else ==> squad_ip_packet = 0;
bool                  squad_retrans_trigger = false;

double                squad_est_thrp = 0;
std::vector<double>   squad_avai_time;
double                squad_download_time = 0;
int                   squad_buff_high = 100000;
int                   squad_buff_low = 100000;
double                squad_retrans_start_time = 0;

int                   next_num_remaining = 1;
int                   retrans_num_remaining = 0;

int                   sub_downloaded_data = 0;
bool                  sub_whole_occupy_check = false;
int                   sub_start_time = 0;
int                   sub_download_duration = 0;

long                  sub_seg_recv_data = 0; 
double                minh_instant_thrp = 0; 
long                  sub_download_intv_us = 0;
long                  sub_last_time = 0;     
bool                  first_seg_frame = true; 
long                  sub_cummulate_seg_recev_data = 0;  

std::vector<double>   minh_pri_proportion_recorder;
double                minh_cur_thrp;
const double          minh_smooth_thrp_margin = 0.125;  // as rcommended in M. Sargent, M. Allman, and V. Paxson, “Computing TCP’s Retransmission Timer,” RFC 2988 (2011).
double                smoothedBW = 0;

bool                  squad_decr_flag = 0;
/* 191028 Minh [streaming for retransmission] ADD-E*/


enum Adaptation_method { AP, ATL, KPush };
Adaptation_method    hung_method = KPush;
int                  hung_cur_rtt = 50;     // ik1 => 220ms
int                  hung_K = 2;
int                  num_of_request=1;

// Hung: recorders
std::vector<int>     hung_seg_recorder;
std::vector<int>     hung_time_recorder;
std::vector<int>     hung_rate_recorder;  // record the final bitrate
std::vector<double>  hung_thrp_recorder;
std::vector<int>     hung_buff_recorder;  // in ms
std::vector<int>     dang_buffer_est;
std::vector<double>  muy_recorder;
std::vector<double>  time_download_recorder;
std::vector <int> next_rate_recorder;

int chosen_rate = -1;
bool cancel = false;
int max_step = -1;
int num_of_switch_down = 0;
int switch_down_greater_3 = 0;
int total_size = 0, total_time = 0;
int D = 30;
//hung's method

// string minh_get_ABR_name (ABR m_ABR){
//   switch(m_ABR){
//     case AGG:
//       return "AGG";
//       break;
//     case SARA:
//       return "SARA";
//       break;
//     case BBA:
//       return "BBA";
//       break;
//     default:
//         std::cerr << "[ERR] Minh: no ABR available. Imported ABR: "
//                   << m_ABR << ". Range of ABR: " << first_ABR << " - " << last_ABR
//                   << std::endl;
//         exit(EXIT_FAILURE);
//       return to_string(m_ABR);
//       break;
//   }
// }
// Hung: get rate and seg# from the uri
int hung_get_rate_from_uri (std::string uri) {
  return std::stoi(uri.substr(uri.rfind('_') + 1));
}
int hung_get_seg_from_uri (std::string uri) {
  int l = uri.find('_') + 1;
  int r = uri.find('_', l);
  return std::stoi(uri.substr(l, r-l));
}

std::string minh_get_type_from_uri_1(std::string uri){  //for oven response
  std::vector<std::string> temp;
  boost::split(temp, uri, boost::is_any_of("_"));
  return temp[0];
}
std::string minh_get_type_from_uri_2(std::string uri){  //for odd response
  std::vector<std::string> temp;
  boost::split(temp, uri, boost::is_any_of("/"));
  return temp[1];
}
void minh_get_origin_thrp(){
  std::ifstream inputFile("thrp_origin.txt");
  std::string str;
  while (std::getline(inputFile, str)){
    origin_thrp.push_back(std::stoi(str)*0.72);
  }
}

namespace {
void readcb(struct ev_loop *loop, ev_io *w, int revents) {
  auto client = static_cast<HttpClient *>(w->data);
  if (client->do_read() != 0) {
    client->disconnect();
  }
}
} // namespace

namespace {
void writecb(struct ev_loop *loop, ev_io *w, int revents) {
  auto client = static_cast<HttpClient *>(w->data);
  auto rv = client->do_write();
  if (rv == HttpClient::ERR_CONNECT_FAIL) {
    client->connect_fail();
    return;
  }
  if (rv != 0) {
    client->disconnect();
  }
}
} // namespace

namespace {
void timeoutcb(struct ev_loop *loop, ev_timer *w, int revents) {
  auto client = static_cast<HttpClient *>(w->data);
  std::cerr << "[ERROR] Timeout" << std::endl;
  client->disconnect();
}
} // namespace

namespace {
void settings_timeout_cb(struct ev_loop *loop, ev_timer *w, int revents) {
  auto client = static_cast<HttpClient *>(w->data);
  ev_timer_stop(loop, w);

  nghttp2_session_terminate_session(client->session, NGHTTP2_SETTINGS_TIMEOUT);

  client->signal_write();
}
} // namespace

HttpClient::HttpClient(const nghttp2_session_callbacks *callbacks,
                       struct ev_loop *loop, SSL_CTX *ssl_ctx)
    : wb(&mcpool),
      session(nullptr),
      callbacks(callbacks),
      loop(loop),
      ssl_ctx(ssl_ctx),
      ssl(nullptr),
      addrs(nullptr),
      next_addr(nullptr),
      cur_addr(nullptr),
      complete(0),
      success(0),
      settings_payloadlen(0),
      state(ClientState::IDLE),
      upgrade_response_status_code(0),
      fd(-1),
      upgrade_response_complete(false) {
  ev_io_init(&wev, writecb, 0, EV_WRITE);
  ev_io_init(&rev, readcb, 0, EV_READ);

  wev.data = this;
  rev.data = this;

  ev_timer_init(&wt, timeoutcb, 0., config.timeout);
  ev_timer_init(&rt, timeoutcb, 0., config.timeout);

  wt.data = this;
  rt.data = this;

  ev_timer_init(&settings_timer, settings_timeout_cb, 0., 10.);

  settings_timer.data = this;
}

HttpClient::~HttpClient() {
  disconnect();

  if (addrs) {
    freeaddrinfo(addrs);
    addrs = nullptr;
    next_addr = nullptr;
  }
}

bool HttpClient::need_upgrade() const {
  return config.upgrade && scheme == "http";
}

int HttpClient::resolve_host(const std::string &host, uint16_t port) {
  int rv;
  this->host = host;
  addrinfo hints{};
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = 0;
  hints.ai_flags = AI_ADDRCONFIG;
  rv = getaddrinfo(host.c_str(), util::utos(port).c_str(), &hints, &addrs);
  if (rv != 0) {
    std::cerr << "[ERROR] getaddrinfo() failed: " << gai_strerror(rv)
              << std::endl;
    return -1;
  }
  if (addrs == nullptr) {
    std::cerr << "[ERROR] No address returned" << std::endl;
    return -1;
  }
  next_addr = addrs;
  return 0;
}

int HttpClient::initiate_connection() {
  int rv;

  cur_addr = nullptr;
  while (next_addr) {
    cur_addr = next_addr;
    next_addr = next_addr->ai_next;
    fd = util::create_nonblock_socket(cur_addr->ai_family);
    if (fd == -1) {
      continue;
    }

    if (ssl_ctx) {
      // We are establishing TLS connection.
      ssl = SSL_new(ssl_ctx);
      if (!ssl) {
        std::cerr << "[ERROR] SSL_new() failed: "
                  << ERR_error_string(ERR_get_error(), nullptr) << std::endl;
        return -1;
      }

      SSL_set_fd(ssl, fd);
      SSL_set_connect_state(ssl);

      // If the user overrode the :authority or host header, use that
      // value for the SNI extension
      const char *host_string = nullptr;
      auto i =
          std::find_if(std::begin(config.headers), std::end(config.headers),
                       [](const Header &nv) {
                         return ":authority" == nv.name || "host" == nv.name;
                       });
      if (i != std::end(config.headers)) {
        host_string = (*i).value.c_str();
      } else {
        host_string = host.c_str();
      }

      if (!util::numeric_host(host_string)) {
        SSL_set_tlsext_host_name(ssl, host_string);
      }
    }

    rv = connect(fd, cur_addr->ai_addr, cur_addr->ai_addrlen);

    if (rv != 0 && errno != EINPROGRESS) {
      if (ssl) {
        SSL_free(ssl);
        ssl = nullptr;
      }
      close(fd);
      fd = -1;
      continue;
    }
    break;
  }

  if (fd == -1) {
    return -1;
  }

  writefn = &HttpClient::connected;

  if (need_upgrade()) {
    on_readfn = &HttpClient::on_upgrade_read;
    on_writefn = &HttpClient::on_upgrade_connect;
  } else {
    on_readfn = &HttpClient::on_read;
    on_writefn = &HttpClient::on_write;
  }

  ev_io_set(&rev, fd, EV_READ);
  ev_io_set(&wev, fd, EV_WRITE);

  ev_io_start(loop, &wev);

  ev_timer_again(loop, &wt);

  return 0;
}

void HttpClient::disconnect() {
  state = ClientState::IDLE;

  for (auto req = std::begin(reqvec); req != std::end(reqvec); ++req) {
    if ((*req)->continue_timer) {
      (*req)->continue_timer->stop();
    }
  }

  ev_timer_stop(loop, &settings_timer);

  ev_timer_stop(loop, &rt);
  ev_timer_stop(loop, &wt);

  ev_io_stop(loop, &rev);
  ev_io_stop(loop, &wev);

  nghttp2_session_del(session);
  session = nullptr;

  if (ssl) {
    SSL_set_shutdown(ssl, SSL_RECEIVED_SHUTDOWN);
    ERR_clear_error();
    SSL_shutdown(ssl);
    SSL_free(ssl);
    ssl = nullptr;
  }

  if (fd != -1) {
    shutdown(fd, SHUT_WR);
    close(fd);
    fd = -1;
  }
}

int HttpClient::read_clear() {
  ev_timer_again(loop, &rt);

  std::array<uint8_t, 8_k> buf;

  for (;;) {
    ssize_t nread;
    while ((nread = read(fd, buf.data(), buf.size())) == -1 && errno == EINTR)
      ;
    if (nread == -1) {
      if (errno == EAGAIN || errno == EWOULDBLOCK) {
        return 0;
      }
      return -1;
    }

    if (nread == 0) {
      return -1;
    }

    if (on_readfn(*this, buf.data(), nread) != 0) {
      return -1;
    }
  }

  return 0;
}

int HttpClient::write_clear() {
  ev_timer_again(loop, &rt);

  std::array<struct iovec, 2> iov;

  for (;;) {
    if (on_writefn(*this) != 0) {
      return -1;
    }

    auto iovcnt = wb.riovec(iov.data(), iov.size());

    if (iovcnt == 0) {
      break;
    }

    ssize_t nwrite;
    while ((nwrite = writev(fd, iov.data(), iovcnt)) == -1 && errno == EINTR)
      ;
    if (nwrite == -1) {
      if (errno == EAGAIN || errno == EWOULDBLOCK) {
        ev_io_start(loop, &wev);
        ev_timer_again(loop, &wt);
        return 0;
      }
      return -1;
    }

    wb.drain(nwrite);
  }

  ev_io_stop(loop, &wev);
  ev_timer_stop(loop, &wt);

  return 0;
}

int HttpClient::noop() { return 0; }

void HttpClient::connect_fail() {
  if (state == ClientState::IDLE) {
    std::cerr << "[ERROR] Could not connect to the address "
              << util::numeric_name(cur_addr->ai_addr, cur_addr->ai_addrlen)
              << std::endl;
  }
  auto cur_state = state;
  disconnect();
  if (cur_state == ClientState::IDLE) {
    if (initiate_connection() == 0) {
      std::cerr << "Trying next address "
                << util::numeric_name(cur_addr->ai_addr, cur_addr->ai_addrlen)
                << std::endl;
    }
  }
}

int HttpClient::connected() {
  if (!util::check_socket_connected(fd)) {
    return ERR_CONNECT_FAIL;
  }

  if (config.verbose) {
    print_timer();
    std::cout << " Connected" << std::endl;
  }

  state = ClientState::CONNECTED;

  ev_io_start(loop, &rev);
  ev_io_stop(loop, &wev);

  ev_timer_again(loop, &rt);
  ev_timer_stop(loop, &wt);

  if (ssl) {
    readfn = &HttpClient::tls_handshake;
    writefn = &HttpClient::tls_handshake;

    return do_write();
  }

  readfn = &HttpClient::read_clear;
  writefn = &HttpClient::write_clear;

  if (need_upgrade()) {
    htp = make_unique<http_parser>();
    http_parser_init(htp.get(), HTTP_RESPONSE);
    htp->data = this;

    return do_write();
  }

  if (connection_made() != 0) {
    return -1;
  }

  return 0;
}

namespace {
size_t populate_settings(nghttp2_settings_entry *iv) {
  size_t niv = 2;

  iv[0].settings_id = NGHTTP2_SETTINGS_MAX_CONCURRENT_STREAMS;
  iv[0].value = config.max_concurrent_streams;

  iv[1].settings_id = NGHTTP2_SETTINGS_INITIAL_WINDOW_SIZE;
  if (config.window_bits != -1) {
    iv[1].value = (1 << config.window_bits) - 1;
  } else {
    iv[1].value = NGHTTP2_INITIAL_WINDOW_SIZE;
  }

  if (config.header_table_size >= 0) {
    if (config.min_header_table_size < config.header_table_size) {
      iv[niv].settings_id = NGHTTP2_SETTINGS_HEADER_TABLE_SIZE;
      iv[niv].value = config.min_header_table_size;
      ++niv;
    }

    iv[niv].settings_id = NGHTTP2_SETTINGS_HEADER_TABLE_SIZE;
    iv[niv].value = config.header_table_size;
    ++niv;
  }

  if (config.no_push) {
    iv[niv].settings_id = NGHTTP2_SETTINGS_ENABLE_PUSH;
    iv[niv].value = 0;
    ++niv;
  }

  return niv;
}
} // namespace

int HttpClient::on_upgrade_connect() {
  ssize_t rv;
  record_connect_end_time();
  assert(!reqvec.empty());
  std::array<nghttp2_settings_entry, 16> iv;
  size_t niv = populate_settings(iv.data());
  assert(settings_payload.size() >= 8 * niv);
  rv = nghttp2_pack_settings_payload(settings_payload.data(),
                                     settings_payload.size(), iv.data(), niv);
  if (rv < 0) {
    return -1;
  }
  settings_payloadlen = rv;
  auto token68 =
      base64::encode(std::begin(settings_payload),
                     std::begin(settings_payload) + settings_payloadlen);
  util::to_token68(token68);

  std::string req;
  if (reqvec[0]->data_prd) {
    // If the request contains upload data, use OPTIONS * to upgrade
    req = "OPTIONS *";
  } else {
    auto meth = std::find_if(
        std::begin(config.headers), std::end(config.headers),
        [](const Header &kv) { return util::streq_l(":method", kv.name); });

    if (meth == std::end(config.headers)) {
      req = "GET ";
      reqvec[0]->method = "GET";
    } else {
      req = (*meth).value;
      req += ' ';
      reqvec[0]->method = (*meth).value;
    }
    req += reqvec[0]->make_reqpath();
  }

  auto headers = Headers{{"host", hostport},
                         {"connection", "Upgrade, HTTP2-Settings"},
                         {"upgrade", NGHTTP2_CLEARTEXT_PROTO_VERSION_ID},
                         {"http2-settings", token68},
                         {"accept", "*/*"},
                         {"user-agent", "nghttp2/" NGHTTP2_VERSION}};
  auto initial_headerslen = headers.size();

  for (auto &kv : config.headers) {
    size_t i;
    if (kv.name.empty() || kv.name[0] == ':') {
      continue;
    }
    for (i = 0; i < initial_headerslen; ++i) {
      if (kv.name == headers[i].name) {
        headers[i].value = kv.value;
        break;
      }
    }
    if (i < initial_headerslen) {
      continue;
    }
    headers.emplace_back(kv.name, kv.value, kv.no_index);
  }

  req += " HTTP/1.1\r\n";

  for (auto &kv : headers) {
    req += kv.name;
    req += ": ";
    req += kv.value;
    req += "\r\n";
  }
  req += "\r\n";

  wb.append(req);

  if (config.verbose) {
    print_timer();
    std::cout << " HTTP Upgrade request\n" << req << std::endl;
  }

  if (!reqvec[0]->data_prd) {
    // record request time if this is a part of real request.
    reqvec[0]->record_request_start_time();
    reqvec[0]->req_nva = std::move(headers);
  }

  on_writefn = &HttpClient::noop;

  signal_write();

  return 0;
}

int HttpClient::on_upgrade_read(const uint8_t *data, size_t len) {
  int rv;

  auto nread = http_parser_execute(htp.get(), &htp_hooks,
                                   reinterpret_cast<const char *>(data), len);

  if (config.verbose) {
    std::cout.write(reinterpret_cast<const char *>(data), nread);
  }

  auto htperr = HTTP_PARSER_ERRNO(htp.get());

  if (htperr != HPE_OK) {
    std::cerr << "[ERROR] Failed to parse HTTP Upgrade response header: "
              << "(" << http_errno_name(htperr) << ") "
              << http_errno_description(htperr) << std::endl;
    return -1;
  }

  if (!upgrade_response_complete) {
    return 0;
  }

  if (config.verbose) {
    std::cout << std::endl;
  }

  if (upgrade_response_status_code != 101) {
    std::cerr << "[ERROR] HTTP Upgrade failed" << std::endl;

    return -1;
  }

  if (config.verbose) {
    print_timer();
    std::cout << " HTTP Upgrade success" << std::endl;
  }

  on_readfn = &HttpClient::on_read;
  on_writefn = &HttpClient::on_write;

  rv = connection_made();
  if (rv != 0) {
    return rv;
  }

  // Read remaining data in the buffer because it is not notified
  // callback anymore.
  rv = on_readfn(*this, data + nread, len - nread);
  if (rv != 0) {
    return rv;
  }

  return 0;
}

int HttpClient::do_read() { return readfn(*this); }
int HttpClient::do_write() { return writefn(*this); }

int HttpClient::connection_made() {
  int rv;

  if (!need_upgrade()) {
    record_connect_end_time();
  }

  if (ssl) {
    // Check NPN or ALPN result
    const unsigned char *next_proto = nullptr;
    unsigned int next_proto_len;
    SSL_get0_next_proto_negotiated(ssl, &next_proto, &next_proto_len);
    for (int i = 0; i < 2; ++i) {
      if (next_proto) {
        auto proto = StringRef{next_proto, next_proto_len};
        if (config.verbose) {
          std::cout << "The negotiated protocol: " << proto << std::endl;
        }
        if (!util::check_h2_is_selected(proto)) {
          next_proto = nullptr;
        }
        break;
      }
#if OPENSSL_VERSION_NUMBER >= 0x10002000L
      SSL_get0_alpn_selected(ssl, &next_proto, &next_proto_len);
#else  // OPENSSL_VERSION_NUMBER < 0x10002000L
      break;
#endif // OPENSSL_VERSION_NUMBER < 0x10002000L
    }
    if (!next_proto) {
      print_protocol_nego_error();
      return -1;
    }
  }

  rv = nghttp2_session_client_new2(&session, callbacks, this,
                                   config.http2_option);

  if (rv != 0) {
    return -1;
  }
  if (need_upgrade()) {
    // Adjust stream user-data depending on the existence of upload
    // data
    Request *stream_user_data = nullptr;
    if (!reqvec[0]->data_prd) {
      stream_user_data = reqvec[0].get();
    }
    // If HEAD is used, that is only when user specified it with -H
    // option.
    auto head_request = stream_user_data && stream_user_data->method == "HEAD";
    rv = nghttp2_session_upgrade2(session, settings_payload.data(),
                                  settings_payloadlen, head_request,
                                  stream_user_data);
    if (rv != 0) {
      std::cerr << "[ERROR] nghttp2_session_upgrade() returned error: "
                << nghttp2_strerror(rv) << std::endl;
      return -1;
    }
    if (stream_user_data) {
      stream_user_data->stream_id = 1;
      request_done(stream_user_data);
    }
  }
  // If upgrade succeeds, the SETTINGS value sent with
  // HTTP2-Settings header field has already been submitted to
  // session object.
  if (!need_upgrade()) {
    std::array<nghttp2_settings_entry, 16> iv;
    auto niv = populate_settings(iv.data());
    rv = nghttp2_submit_settings(session, NGHTTP2_FLAG_NONE, iv.data(), niv);
    if (rv != 0) {
      return -1;
    }
  }
  if (!config.no_dep) {
    // Create anchor stream nodes
    nghttp2_priority_spec pri_spec;

    for (auto &anchor : anchors) {
      nghttp2_priority_spec_init(&pri_spec, anchor.dep_stream_id, anchor.weight,
                                 0);
      rv = nghttp2_submit_priority(session, NGHTTP2_FLAG_NONE, anchor.stream_id,
                                   &pri_spec);
      if (rv != 0) {
        return -1;
      }
    }

    rv = nghttp2_session_set_next_stream_id(
        session, anchors[ANCHOR_FOLLOWERS].stream_id + 2);
    if (rv != 0) {
      return -1;
    }

    if (need_upgrade() && !reqvec[0]->data_prd) {
      // Amend the priority because we cannot send priority in
      // HTTP/1.1 Upgrade.
      auto &anchor = anchors[ANCHOR_FOLLOWERS];
      nghttp2_priority_spec_init(&pri_spec, anchor.stream_id,
                                 reqvec[0]->pri_spec.weight, 0);

      rv = nghttp2_submit_priority(session, NGHTTP2_FLAG_NONE, 1, &pri_spec);
      if (rv != 0) {
        return -1;
      }
    }
  } else if (need_upgrade() && !reqvec[0]->data_prd &&
             reqvec[0]->pri_spec.weight != NGHTTP2_DEFAULT_WEIGHT) {
    // Amend the priority because we cannot send priority in HTTP/1.1
    // Upgrade.
    nghttp2_priority_spec pri_spec;

    nghttp2_priority_spec_init(&pri_spec, 0, reqvec[0]->pri_spec.weight, 0);

    rv = nghttp2_submit_priority(session, NGHTTP2_FLAG_NONE, 1, &pri_spec);
    if (rv != 0) {
      return -1;
    }
  }

  ev_timer_again(loop, &settings_timer);

  if (config.connection_window_bits != -1) {
    int32_t window_size = (1 << config.connection_window_bits) - 1;
    rv = nghttp2_session_set_local_window_size(session, NGHTTP2_FLAG_NONE, 0,
                                               window_size);
    if (rv != 0) {
      return -1;
    }
  }
  // Adjust first request depending on the existence of the upload
  // data
  for (auto i = std::begin(reqvec) + (need_upgrade() && !reqvec[0]->data_prd);
       i != std::end(reqvec); ++i) {
    if (submit_request(this, config.headers, (*i).get()) != 0) {
      return -1;
    }
  // Hung:
  hung_headers = config.headers;
  }

  signal_write();

  return 0;
}

int HttpClient::on_read(const uint8_t *data, size_t len) {
  if (config.hexdump) {
    util::hexdump(stdout, data, len);
  }

  auto rv = nghttp2_session_mem_recv(session, data, len);
  if (rv < 0) {
    std::cerr << "[ERROR] nghttp2_session_mem_recv() returned error: "
              << nghttp2_strerror(rv) << std::endl;
    return -1;
  }

  assert(static_cast<size_t>(rv) == len);

  if (nghttp2_session_want_read(session) == 0 &&
      nghttp2_session_want_write(session) == 0 && wb.rleft() == 0) {
    return -1;
  }

  signal_write();

  return 0;
}

int HttpClient::on_write() {
  for (;;) {
    if (wb.rleft() >= 16384) {
      return 0;
    }

    const uint8_t *data;
    auto len = nghttp2_session_mem_send(session, &data);
    if (len < 0) {
      std::cerr << "[ERROR] nghttp2_session_send() returned error: "
                << nghttp2_strerror(len) << std::endl;
      return -1;
    }

    if (len == 0) {
      break;
    }

    wb.append(data, len);
  }

  if (nghttp2_session_want_read(session) == 0 &&
      nghttp2_session_want_write(session) == 0 && wb.rleft() == 0) {
    return -1;
  }

  return 0;
}

int HttpClient::tls_handshake() {
  ev_timer_again(loop, &rt);

  ERR_clear_error();

  auto rv = SSL_do_handshake(ssl);

  if (rv <= 0) {
    auto err = SSL_get_error(ssl, rv);
    switch (err) {
    case SSL_ERROR_WANT_READ:
      ev_io_stop(loop, &wev);
      ev_timer_stop(loop, &wt);
      return 0;
    case SSL_ERROR_WANT_WRITE:
      ev_io_start(loop, &wev);
      ev_timer_again(loop, &wt);
      return 0;
    default:
      return -1;
    }
  }

  ev_io_stop(loop, &wev);
  ev_timer_stop(loop, &wt);

  readfn = &HttpClient::read_tls;
  writefn = &HttpClient::write_tls;

  if (connection_made() != 0) {
    return -1;
  }

  return 0;
}

int HttpClient::read_tls() {
  ev_timer_again(loop, &rt);

  ERR_clear_error();

  std::array<uint8_t, 8_k> buf;
  for (;;) {
    auto rv = SSL_read(ssl, buf.data(), buf.size());

    if (rv <= 0) {
      auto err = SSL_get_error(ssl, rv);
      switch (err) {
      case SSL_ERROR_WANT_READ:
        return 0;
      case SSL_ERROR_WANT_WRITE:
        // renegotiation started
        return -1;
      default:
        return -1;
      }
    }

    if (on_readfn(*this, buf.data(), rv) != 0) {
      return -1;
    }
  }
}

int HttpClient::write_tls() {
  ev_timer_again(loop, &rt);

  ERR_clear_error();

  struct iovec iov;

  for (;;) {
    if (on_writefn(*this) != 0) {
      return -1;
    }

    auto iovcnt = wb.riovec(&iov, 1);

    if (iovcnt == 0) {
      break;
    }

    auto rv = SSL_write(ssl, iov.iov_base, iov.iov_len);

    if (rv <= 0) {
      auto err = SSL_get_error(ssl, rv);
      switch (err) {
      case SSL_ERROR_WANT_READ:
        // renegotiation started
        return -1;
      case SSL_ERROR_WANT_WRITE:
        ev_io_start(loop, &wev);
        ev_timer_again(loop, &wt);
        return 0;
      default:
        return -1;
      }
    }

    wb.drain(rv);
  }

  ev_io_stop(loop, &wev);
  ev_timer_stop(loop, &wt);

  return 0;
}

void HttpClient::signal_write() { ev_io_start(loop, &wev); }

bool HttpClient::all_requests_processed() const {
  return complete == reqvec.size();
}

void HttpClient::update_hostport() {
  if (reqvec.empty()) {
    return;
  }
  scheme = util::get_uri_field(reqvec[0]->uri.c_str(), reqvec[0]->u, UF_SCHEMA)
               .str();
  std::stringstream ss;
  if (reqvec[0]->is_ipv6_literal_addr()) {
    // we may have zone ID, which must start with "%25", or "%".  RFC
    // 6874 defines "%25" only, and just "%" is allowed for just
    // convenience to end-user input.
    auto host =
        util::get_uri_field(reqvec[0]->uri.c_str(), reqvec[0]->u, UF_HOST);
    auto end = std::find(std::begin(host), std::end(host), '%');
    ss << "[";
    ss.write(host.c_str(), end - std::begin(host));
    ss << "]";
  } else {
    util::write_uri_field(ss, reqvec[0]->uri.c_str(), reqvec[0]->u, UF_HOST);
  }
  if (util::has_uri_field(reqvec[0]->u, UF_PORT) &&
      reqvec[0]->u.port !=
          util::get_default_port(reqvec[0]->uri.c_str(), reqvec[0]->u)) {
    ss << ":" << reqvec[0]->u.port;
  }
  hostport = ss.str();
}

bool HttpClient::add_request(const std::string &uri,
                             const nghttp2_data_provider *data_prd,
                             int64_t data_length,
                             const nghttp2_priority_spec &pri_spec, int level) {
  http_parser_url u{};
  if (http_parser_parse_url(uri.c_str(), uri.size(), 0, &u) != 0) {
    return false;
  }

  // Hung_comment: Tam thoi bo cai check duplication nay di (no cache)
//  if (path_cache.count(uri)) {
//    return false;
//  }

  if (config.multiply == 1) {
    path_cache.insert(uri);
  }

  reqvec.push_back(
      make_unique<Request>(uri, u, data_prd, data_length, pri_spec, level));
  return true;
}

void HttpClient::record_start_time() {
  timing.system_start_time = std::chrono::system_clock::now();
  timing.start_time = get_time();
}

void HttpClient::record_domain_lookup_end_time() {
  timing.domain_lookup_end_time = get_time();
}

void HttpClient::record_connect_end_time() {
  timing.connect_end_time = get_time();
}

void HttpClient::request_done(Request *req) {
  if (req->stream_id % 2 == 0) {
    return;
  }
}

#ifdef HAVE_JANSSON
void HttpClient::output_har(FILE *outfile) {
  static auto PAGE_ID = "page_0";

  auto root = json_object();
  auto log = json_object();
  json_object_set_new(root, "log", log);
  json_object_set_new(log, "version", json_string("1.2"));

  auto creator = json_object();
  json_object_set_new(log, "creator", creator);

  json_object_set_new(creator, "name", json_string("nghttp"));
  json_object_set_new(creator, "version", json_string(NGHTTP2_VERSION));

  auto pages = json_array();
  json_object_set_new(log, "pages", pages);

  auto page = json_object();
  json_array_append_new(pages, page);

  json_object_set_new(
      page, "startedDateTime",
      json_string(util::format_iso8601(timing.system_start_time).c_str()));
  json_object_set_new(page, "id", json_string(PAGE_ID));
  json_object_set_new(page, "title", json_string(""));

  json_object_set_new(page, "pageTimings", json_object());

  auto entries = json_array();
  json_object_set_new(log, "entries", entries);

  auto dns_delta = std::chrono::duration_cast<std::chrono::microseconds>(
                       timing.domain_lookup_end_time - timing.start_time)
                       .count() /
                   1000.0;
  auto connect_delta =
      std::chrono::duration_cast<std::chrono::microseconds>(
          timing.connect_end_time - timing.domain_lookup_end_time)
          .count() /
      1000.0;

  for (size_t i = 0; i < reqvec.size(); ++i) {
    auto &req = reqvec[i];

    if (req->timing.state != RequestState::ON_COMPLETE) {
      continue;
    }

    auto entry = json_object();
    json_array_append_new(entries, entry);

    auto &req_timing = req->timing;
    auto request_time =
        (i == 0) ? timing.system_start_time
                 : timing.system_start_time +
                       std::chrono::duration_cast<
                           std::chrono::system_clock::duration>(
                           req_timing.request_start_time - timing.start_time);

    auto wait_delta =
        std::chrono::duration_cast<std::chrono::microseconds>(
            req_timing.response_start_time - req_timing.request_start_time)
            .count() /
        1000.0;
    auto receive_delta =
        std::chrono::duration_cast<std::chrono::microseconds>(
            req_timing.response_end_time - req_timing.response_start_time)
            .count() /
        1000.0;

    auto time_sum =
        std::chrono::duration_cast<std::chrono::microseconds>(
            (i == 0) ? (req_timing.response_end_time - timing.start_time)
                     : (req_timing.response_end_time -
                        req_timing.request_start_time))
            .count() /
        1000.0;

    json_object_set_new(
        entry, "startedDateTime",
        json_string(util::format_iso8601(request_time).c_str()));
    json_object_set_new(entry, "time", json_real(time_sum));

    auto pushed = req->stream_id % 2 == 0;

    json_object_set_new(entry, "comment",
                        json_string(pushed ? "Pushed Object" : ""));

    auto request = json_object();
    json_object_set_new(entry, "request", request);

    auto req_headers = json_array();
    json_object_set_new(request, "headers", req_headers);

    for (auto &nv : req->req_nva) {
      auto hd = json_object();
      json_array_append_new(req_headers, hd);

      json_object_set_new(hd, "name", json_string(nv.name.c_str()));
      json_object_set_new(hd, "value", json_string(nv.value.c_str()));
    }

    json_object_set_new(request, "method", json_string(req->method.c_str()));
    json_object_set_new(request, "url", json_string(req->uri.c_str()));
    json_object_set_new(request, "httpVersion", json_string("HTTP/2.0"));
    json_object_set_new(request, "cookies", json_array());
    json_object_set_new(request, "queryString", json_array());
    json_object_set_new(request, "headersSize", json_integer(-1));
    json_object_set_new(request, "bodySize", json_integer(-1));

    auto response = json_object();
    json_object_set_new(entry, "response", response);

    auto res_headers = json_array();
    json_object_set_new(response, "headers", res_headers);

    for (auto &nv : req->res_nva) {
      auto hd = json_object();
      json_array_append_new(res_headers, hd);

      json_object_set_new(hd, "name", json_string(nv.name.c_str()));
      json_object_set_new(hd, "value", json_string(nv.value.c_str()));
    }

    json_object_set_new(response, "status", json_integer(req->status));
    json_object_set_new(response, "statusText", json_string(""));
    json_object_set_new(response, "httpVersion", json_string("HTTP/2.0"));
    json_object_set_new(response, "cookies", json_array());

    auto content = json_object();
    json_object_set_new(response, "content", content);

    json_object_set_new(content, "size", json_integer(req->response_len));

    auto content_type_ptr = http2::get_header(req->res_nva, "content-type");

    const char *content_type = "";
    if (content_type_ptr) {
      content_type = content_type_ptr->value.c_str();
    }

    json_object_set_new(content, "mimeType", json_string(content_type));

    json_object_set_new(response, "redirectURL", json_string(""));
    json_object_set_new(response, "headersSize", json_integer(-1));
    json_object_set_new(response, "bodySize", json_integer(-1));
    json_object_set_new(entry, "cache", json_object());

    auto timings = json_object();
    json_object_set_new(entry, "timings", timings);

    auto dns_timing = (i == 0) ? dns_delta : 0;
    auto connect_timing = (i == 0) ? connect_delta : 0;

    json_object_set_new(timings, "dns", json_real(dns_timing));
    json_object_set_new(timings, "connect", json_real(connect_timing));

    json_object_set_new(timings, "blocked", json_real(0.0));
    json_object_set_new(timings, "send", json_real(0.0));
    json_object_set_new(timings, "wait", json_real(wait_delta));
    json_object_set_new(timings, "receive", json_real(receive_delta));

    json_object_set_new(entry, "pageref", json_string(PAGE_ID));
    json_object_set_new(entry, "connection",
                        json_string(util::utos(req->stream_id).c_str()));
  }

  json_dumpf(root, outfile, JSON_PRESERVE_ORDER | JSON_INDENT(2));
  json_decref(root);
}
#endif // HAVE_JANSSON

namespace {
void update_html_parser(HttpClient *client, Request *req, const uint8_t *data,
                        size_t len, int fin) {
  if (!req->html_parser) {
    return;
  }
  req->update_html_parser(data, len, fin);

  for (auto &p : req->html_parser->get_links()) {
    auto uri = strip_fragment(p.first.c_str());
    auto res_type = p.second;

    http_parser_url u{};
    if (http_parser_parse_url(uri.c_str(), uri.size(), 0, &u) == 0 &&
        util::fieldeq(uri.c_str(), u, req->uri.c_str(), req->u, UF_SCHEMA) &&
        util::fieldeq(uri.c_str(), u, req->uri.c_str(), req->u, UF_HOST) &&
        util::porteq(uri.c_str(), u, req->uri.c_str(), req->u)) {
      // No POST data for assets
      auto pri_spec = resolve_dep(res_type);

      if (client->add_request(uri, nullptr, 0, pri_spec, req->level + 1)) {

        submit_request(client, config.headers, client->reqvec.back().get());
      }
    }
  }
  req->html_parser->clear_links();
}
} // namespace

namespace {
HttpClient *get_client(void *user_data) {
  return static_cast<HttpClient *>(user_data);
}
} // namespace

namespace {
int on_data_chunk_recv_callback(nghttp2_session *session, uint8_t flags,
                                int32_t stream_id, const uint8_t *data,
                                size_t len, void *user_data) {
  auto client = get_client(user_data);
  auto req = static_cast<Request *>(
      nghttp2_session_get_stream_user_data(session, stream_id));

  if (!req) {
    return 0;
  }

  if (config.verbose >= 2) {
    verbose_on_data_chunk_recv_callback(session, flags, stream_id, data, len,
                                        user_data);
  }

  req->response_len += len;

  if (req->inflater) {
    while (len > 0) {
      const size_t MAX_OUTLEN = 4_k;
      std::array<uint8_t, MAX_OUTLEN> out;
      size_t outlen = MAX_OUTLEN;
      size_t tlen = len;
      int rv =
          nghttp2_gzip_inflate(req->inflater, out.data(), &outlen, data, &tlen);
      if (rv != 0) {
        nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE, stream_id,
                                  NGHTTP2_INTERNAL_ERROR);
        break;
      }

      if (!config.null_out) {
        std::cout.write(reinterpret_cast<const char *>(out.data()), outlen);
      }

      update_html_parser(client, req, out.data(), outlen, 0);
      data += tlen;
      len -= tlen;
    }

    return 0;
  }

  if (!config.null_out) {
    std::cout.write(reinterpret_cast<const char *>(data), len);
  }

  update_html_parser(client, req, data, len, 0);

  return 0;
}
} // namespace

namespace {
ssize_t select_padding_callback(nghttp2_session *session,
                                const nghttp2_frame *frame, size_t max_payload,
                                void *user_data) {
  return std::min(max_payload, frame->hd.length + config.padding);
}
} // namespace

namespace {
void check_response_header(nghttp2_session *session, Request *req) {
  bool gzip = false;

  req->expect_final_response = false;

  auto status_hd = req->get_res_header(http2::HD__STATUS);

  if (!status_hd) {
    nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE, req->stream_id,
                              NGHTTP2_PROTOCOL_ERROR);
    return;
  }

  auto status = http2::parse_http_status_code(StringRef{status_hd->value});
  if (status == -1) {
    nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE, req->stream_id,
                              NGHTTP2_PROTOCOL_ERROR);
    return;
  }

  req->status = status;

  for (auto &nv : req->res_nva) {
    if ("content-encoding" == nv.name) {
      gzip = util::strieq_l("gzip", nv.value) ||
             util::strieq_l("deflate", nv.value);
      continue;
    }
  }

  if (req->status / 100 == 1) {
    if (req->continue_timer && (req->status == 100)) {
      // If the request is waiting for a 100 Continue, complete the handshake.
      req->continue_timer->dispatch_continue();
    }

    req->expect_final_response = true;
    req->status = 0;
    req->res_nva.clear();
    http2::init_hdidx(req->res_hdidx);
    return;
  } else if (req->continue_timer) {
    // A final response stops any pending Expect/Continue handshake.
    req->continue_timer->stop();
  }

  if (gzip) {
    if (!req->inflater) {
      req->init_inflater();
    }
  }
  if (config.get_assets && req->level == 0) {
    if (!req->html_parser) {
      req->init_html_parser();
    }
  }
}
} // namespace

namespace {
int on_begin_headers_callback(nghttp2_session *session,
                              const nghttp2_frame *frame, void *user_data) {
  auto client = get_client(user_data);
  switch (frame->hd.type) {
  case NGHTTP2_HEADERS: {
    auto req = static_cast<Request *>(
        nghttp2_session_get_stream_user_data(session, frame->hd.stream_id));
    if (!req) {
      break;
    }

    switch (frame->headers.cat) {
    case NGHTTP2_HCAT_RESPONSE:
    case NGHTTP2_HCAT_PUSH_RESPONSE:
      req->record_response_start_time();
      break;
    default:
      break;
    }

    break;
  }
  case NGHTTP2_PUSH_PROMISE: {
    auto stream_id = frame->push_promise.promised_stream_id;
    http_parser_url u{};
    // TODO Set pri and level
    nghttp2_priority_spec pri_spec;

    nghttp2_priority_spec_default_init(&pri_spec);

    auto req = make_unique<Request>("", u, nullptr, 0, pri_spec);
    req->stream_id = stream_id;

    nghttp2_session_set_stream_user_data(session, stream_id, req.get());

    client->request_done(req.get());
    req->record_request_start_time();
    client->reqvec.push_back(std::move(req));

    break;
  }
  }
  return 0;
}
} // namespace

namespace {
int on_header_callback(nghttp2_session *session, const nghttp2_frame *frame,
                       const uint8_t *name, size_t namelen,
                       const uint8_t *value, size_t valuelen, uint8_t flags,
                       void *user_data) {
  if (config.verbose) {
    verbose_on_header_callback(session, frame, name, namelen, value, valuelen,
                               flags, user_data);
  }

  switch (frame->hd.type) {
  case NGHTTP2_HEADERS: {
    auto req = static_cast<Request *>(
        nghttp2_session_get_stream_user_data(session, frame->hd.stream_id));

    if (!req) {
      break;
    }

    /* ignore trailer header */
    if (frame->headers.cat == NGHTTP2_HCAT_HEADERS &&
        !req->expect_final_response) {
      break;
    }

    if (req->header_buffer_size + namelen + valuelen > 64_k) {
      nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE, frame->hd.stream_id,
                                NGHTTP2_INTERNAL_ERROR);
      return 0;
    }

    req->header_buffer_size += namelen + valuelen;

    auto token = http2::lookup_token(name, namelen);

    http2::index_header(req->res_hdidx, token, req->res_nva.size());
    http2::add_header(req->res_nva, name, namelen, value, valuelen,
                      flags & NGHTTP2_NV_FLAG_NO_INDEX, token);
    break;
  }
  case NGHTTP2_PUSH_PROMISE: {
    auto req = static_cast<Request *>(nghttp2_session_get_stream_user_data(
        session, frame->push_promise.promised_stream_id));

    if (!req) {
      break;
    }

    if (req->header_buffer_size + namelen + valuelen > 64_k) {
      nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE,
                                frame->push_promise.promised_stream_id,
                                NGHTTP2_INTERNAL_ERROR);
      return 0;
    }

    req->header_buffer_size += namelen + valuelen;

    auto token = http2::lookup_token(name, namelen);

    http2::index_header(req->req_hdidx, token, req->req_nva.size());
    http2::add_header(req->req_nva, name, namelen, value, valuelen,
                      flags & NGHTTP2_NV_FLAG_NO_INDEX, token);
    break;
  }
  }
  return 0;
}
} // namespace

namespace {
// [20.06.30] update termination logic ADD-E
bool check_termination(int max_data, int downloaded_data, double t_avai, double thrp, int pri, int pri_sum){
  double allocated_thrp = thrp*(pri/pri_sum); // kbit/s
  std::cout << "Check termination" << '\n'
            << "max data (kbit): " << max_data << '\n'
            << "data downloaded (kbit): " << downloaded_data << '\n'
            << "thrp: " << thrp << std::endl;
  if (t_avai < (max_data - downloaded_data)/(allocated_thrp/8)){
    return true;
  }
  else {
    return false;
  }
}
// [20.06.30] update termination logic ADD-E
int on_frame_recv_callback2(nghttp2_session *session,
                            const nghttp2_frame *frame, void *user_data) {
  int rv = 0;

  if (config.verbose) {
    verbose_on_frame_recv_callback(session, frame, user_data);
  }

  auto client = get_client(user_data);
  switch (frame->hd.type) {
  case NGHTTP2_DATA: {
    auto req = static_cast<Request *>(
        nghttp2_session_get_stream_user_data(session, frame->hd.stream_id));
    if (!req) {
      return 0;
      ;
    }
/*191113 minh measure throughput while using priority ADD-S*/
    if (frame->hd.length > 0){
            
      sub_downloaded_data += frame->hd.length;
      long m_download_time = std::chrono::duration_cast<std::chrono::milliseconds>(
                   get_time() - client->timing.connect_end_time).count();
      // std::cout << "~~~~~ the whole response length will be: " << req->response_len << std::endl;
      if (retrans_transmitting){ // if retransmitting
        int m_seg_idx = hung_get_seg_from_uri(req->make_reqpath());
        int m_rate = hung_get_rate_from_uri(req->make_reqpath());
        int m_buff_length = hung_buff_recorder.size();
        
        double m_inst_buff = hung_cur_buff - (m_download_time - hung_last_adapt_time); //ms

        if (m_seg_idx < minh_max_next_seg_id){
          retrans_stream_id = frame->hd.stream_id;
          double m_retrans_buff = m_seg_idx*hung_sd + minh_rebuff_duration + start_play_time - m_download_time;

          if (minh_retransmission_method == PROPOSAL){
            // [20.06.30] update termination logic MOD-S
            #if 1
            if (m_retrans_buff < 100 && !termination_trigger){ // RST_STREAM
            #else
            if (check_termination(minh_retrans_data, req->response_len/1000,
                                  m_retrans_buff*0.9, MAX((double) sub_downloaded_data*8*1000/(m_download_time - sub_start_time),hung_inst_thrp),
                                  pri_retrans_rate, (pri_retrans_rate+pri_new_rate))){
            #endif
            // [20.06.30] update termination logic AMODDD-E
              std::cout << "retrans_segment_id: " << m_seg_idx << '\t'
                        << "its playout time: " << m_seg_idx*hung_sd + minh_rebuff_duration + start_play_time << '\t'
                        << "current time: " << m_download_time << std::endl;

              std::cout << ":::::::::::::::::: TERMINATION RETRANS :::::::::::::::::: m_retrans_buff "<<m_retrans_buff << std::endl; 

              // minh_terminate_segment(client);
              minh_retrans_terminated_seg_recorder.push_back(m_seg_idx);
              retrans_num_termination ++;
              termination_trigger = true;
              termination_finish = false;
              minh_retrans_trigger = false; 
              
              retrans_transmitting = false;
              retrans_transmitting_period = false;
              retrans_num_remaining = 0;

              nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE,
                                        retrans_stream_id, NGHTTP2_CANCEL);            
            }            
          }
          else if (minh_retransmission_method == SQUAD){
            retrans_stream_id = frame->hd.stream_id;
            double m_retrans_buff = m_seg_idx*hung_sd + minh_rebuff_duration + start_play_time - m_download_time;
            long  m_download_time = std::chrono::duration_cast<std::chrono::milliseconds>(
                   get_time() - req->timing.response_start_time).count();
            double m_response_len = req->response_len/125; //kbit
            double m_instant_thrp = m_response_len*1.0/m_download_time; //kbit/ms

            if(m_retrans_buff < 1.5*(retrans_rate - m_response_len)/m_instant_thrp && !termination_trigger){
              std::cout << "retrans_segment_id: " << m_seg_idx << '\t'
                        << "its playout time: " << m_seg_idx*hung_sd + minh_rebuff_duration + start_play_time << '\t'
                        << "current time: " << m_download_time << std::endl;

              std::cout << ":::::::::::::::::: TERMINATION NEXT :::::::::::::::::: m_retrans_buff "<<m_retrans_buff << " m_response_len: " << m_response_len << std::endl; 

              // minh_terminate_segment(client);
              minh_retrans_terminated_seg_recorder.push_back(m_seg_idx);
              retrans_num_termination ++;
              termination_trigger = true;
              termination_finish = false;
              minh_retrans_trigger = false; 
              
              retrans_transmitting = false;
              retrans_transmitting_period = false;
              retrans_num_remaining = 0;

              nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE,
                                        frame->hd.stream_id, NGHTTP2_CANCEL);
            }
          }
        }
        else
        {
          if (minh_retransmission_method == PROPOSAL){
            // [20.06.30] wrong DEL-S
            #if 0
            double m_inst_buff = hung_buff_recorder.at(m_buff_length-1) - m_download_time; //ms
            #endif
            // [20.06.30] wrong DEL-E
            // [20.06.30] update termination logic MOD-S
            #if 1
            if (m_inst_buff < retrans_buff_thres)
            { // RST_STREAM .
              #else
              double t_next_avai = hung_cur_buff - MAX(hung_sd*(1+0.1), buff_max/4);
              if (check_termination(minh_next_data, req->response_len/1000,
                                    t_next_avai, MAX((double) sub_downloaded_data*8*1000/(m_download_time - sub_start_time), hung_inst_thrp),
                                    pri_new_rate, (pri_retrans_rate+pri_new_rate))){
              #endif
              // [20.06.30] update termination logic MOD-E
              std::cout << ":::::::::::::::::: TERMINATION :::::::::::::::::: retrans_stream_id "<<retrans_stream_id 
                        << " current stream id "  << frame->hd.stream_id << std::endl; 
              // minh_terminate_segment(client);
              retrans_num_termination ++;
              termination_trigger = true;
              termination_finish = false;
              minh_retrans_trigger = false; 
              
              retrans_transmitting = false;
              retrans_transmitting_period = false;
              retrans_num_remaining = 0;
              nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE,
                                        retrans_stream_id, NGHTTP2_CANCEL);            
            }            
          }
          else if (minh_retransmission_method == SQUAD){
            //////////////
          }  
        }          
      }
      // [20.06.25] * Stall timestamp determination * ADD-S
      if (!rebuffering_while_download && hung_cur_buff < 2*hung_sd){
        int inst_download_time = std::chrono::duration_cast<std::chrono::milliseconds>(
                  get_time() - req->timing.response_start_time).count();
        int inst_buff = minh_max_next_seg_id*hung_sd + minh_rebuff_duration + start_play_time - m_download_time;

        if (inst_buff <= 0 && !hung_on_buffering){
          int now = std::chrono::duration_cast<std::chrono::milliseconds>(
                    get_time() - client->timing.connect_end_time).count();          
          minh_rebuff_sent = false;
          rebuffering_while_download = true;
          hung_cur_buff = 0;
          minh_rebuff_start = now + inst_buff;
          minh_stall_start_time.push_back(minh_rebuff_start); //ms
          stall_time_stamp.push_back(minh_rebuff_start/1000.0);
          
          // rebuf_num ++;
          std::cout << "\n\t[MINH] INFO: ON RECEIVING REBUFFERING from " << now + inst_buff << "ms rebuf_num: " << rebuf_num << std::endl; 
        }      
      }
      // [20.06.25] * Stall timestamp determination * ADD-S
    }
/*191113 minh measure throughput while using priority ADD-E*/  
    if (frame->hd.flags & NGHTTP2_FLAG_END_STREAM) {
      req->record_response_end_time();
      ++client->success;
    }

    break;
  }
  case NGHTTP2_HEADERS: {
    auto req = static_cast<Request *>(
        nghttp2_session_get_stream_user_data(session, frame->hd.stream_id));
    // If this is the HTTP Upgrade with OPTIONS method to avoid POST,
    // req is nullptr.
    if (!req) {
      return 0;
      ;
    }

    switch (frame->headers.cat) {
    case NGHTTP2_HCAT_RESPONSE:
    case NGHTTP2_HCAT_PUSH_RESPONSE:
      check_response_header(session, req);
      break;
    case NGHTTP2_HCAT_HEADERS:
      if (req->expect_final_response) {
        check_response_header(session, req);
        break;
      }
      if ((frame->hd.flags & NGHTTP2_FLAG_END_STREAM) == 0) {
        nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE,
                                  frame->hd.stream_id, NGHTTP2_PROTOCOL_ERROR);
        return 0;
      }
      break;
    default:
      assert(0);
    }

    if (frame->hd.flags & NGHTTP2_FLAG_END_STREAM) {
      req->record_response_end_time();
      ++client->success;
    }

    break;
  }
  case NGHTTP2_SETTINGS:
    if ((frame->hd.flags & NGHTTP2_FLAG_ACK) == 0) {
      break;
    }
    ev_timer_stop(client->loop, &client->settings_timer);
    break;
  case NGHTTP2_PUSH_PROMISE: {
    auto req = static_cast<Request *>(nghttp2_session_get_stream_user_data(
        session, frame->push_promise.promised_stream_id));
    if (!req) {
      break;
    }

    // Reset for response header field reception
    req->header_buffer_size = 0;

    auto scheme = req->get_req_header(http2::HD__SCHEME);
    auto authority = req->get_req_header(http2::HD__AUTHORITY);
    auto path = req->get_req_header(http2::HD__PATH);

    if (!authority) {
      authority = req->get_req_header(http2::HD_HOST);
    }

    // libnghttp2 guarantees :scheme, :method, :path and (:authority |
    // host) exist and non-empty.
    if (path->value[0] != '/') {
      nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE,
                                frame->push_promise.promised_stream_id,
                                NGHTTP2_PROTOCOL_ERROR);
      break;
    }
    std::string uri = scheme->value;
    uri += "://";
    uri += authority->value;
    uri += path->value;
    http_parser_url u{};
    if (http_parser_parse_url(uri.c_str(), uri.size(), 0, &u) != 0) {
      nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE,
                                frame->push_promise.promised_stream_id,
                                NGHTTP2_PROTOCOL_ERROR);
      break;
    }
    req->uri = uri;
    req->u = u;

    if (client->path_cache.count(uri)) {  // if this request has already been sent.
      // [20.06.29] Fix error unexpected termination MOD-S
      std::cout << "[WARNING] this request has already been sent." << "URI: " << uri << std::endl;
      std::cout << "[MINH] INFO: " << __FILE__ << ": " << __func__<< "(): " << __LINE__ << std::endl;
      #if 0
      nghttp2_submit_rst_stream(session, NGHTTP2_FLAG_NONE,
                                frame->push_promise.promised_stream_id,
                                NGHTTP2_CANCEL);
      #endif
      // [20.06.29] Fix error unexpected termination MOD-E 
      break;
    }

    if (config.multiply == 1) {
      client->path_cache.insert(uri);
    }

    break;
  }
  }
  return rv;
}
} // namespace

namespace {
int before_frame_send_callback(nghttp2_session *session,
                               const nghttp2_frame *frame, void *user_data) {
  if (frame->hd.type != NGHTTP2_HEADERS ||
      frame->headers.cat != NGHTTP2_HCAT_REQUEST) {
    return 0;
  }
  auto req = static_cast<Request *>(
      nghttp2_session_get_stream_user_data(session, frame->hd.stream_id));
  assert(req);
  req->record_request_start_time();
  return 0;
}

} // namespace

namespace {
int on_frame_send_callback(nghttp2_session *session, const nghttp2_frame *frame,
                           void *user_data) {
  if (config.verbose) {
    verbose_on_frame_send_callback(session, frame, user_data);
  }

  if (frame->hd.type != NGHTTP2_HEADERS ||
      frame->headers.cat != NGHTTP2_HCAT_REQUEST) {
    return 0;
  }

  auto req = static_cast<Request *>(
      nghttp2_session_get_stream_user_data(session, frame->hd.stream_id));
  if (!req) {
    return 0;
  }

  // If this request is using Expect/Continue, start its ContinueTimer.
  if (req->continue_timer) {
    req->continue_timer->start();
  }

  return 0;
}
} // namespace

namespace {
int on_frame_not_send_callback(nghttp2_session *session,
                               const nghttp2_frame *frame, int lib_error_code,
                               void *user_data) {
  if (frame->hd.type != NGHTTP2_HEADERS ||
      frame->headers.cat != NGHTTP2_HCAT_REQUEST) {
    return 0;
  }

  auto req = static_cast<Request *>(
      nghttp2_session_get_stream_user_data(session, frame->hd.stream_id));
  if (!req) {
    return 0;
  }

  std::cerr << "[ERROR] request " << req->uri
            << " failed: " << nghttp2_strerror(lib_error_code) << std::endl;

  return 0;
}
} // namespace

// Hung: given the instant throughput, compute the maximum adapted bitrate
// In this method, the maximum adapted bitrate is considered as a rate candidate
int hung_compute_max_adapted_rate (double thrp) {
  // compute rate candidate
  int rate_candidate = hung_rate_set.at(0); 
  for (auto rate = hung_rate_set.rbegin(); rate != hung_rate_set.rend(); ++rate) {
    //std::cout << std::endl << "[ADAPTATION] Take look " << *rate << " " << thrp << std::endl;
    if ((*rate) <= thrp) { 
      rate_candidate = *rate;
      break; 
    }
  }
  return rate_candidate;
}

// Hung: rebufferring phase
void hung_req_vod_rebuff(HttpClient *client, bool submit = true) {
  rebuf_num ++;
  minh_rebuff_sent = true;
  int num_of_segs = rebuff_buff_thres_L/hung_sd;

  if (num_of_segs*hung_sd < rebuff_buff_thres_L)
      num_of_segs ++;

  if (rebuffering_while_download){
    num_of_segs -= hung_cur_buff/hung_sd;
    rebuffering_while_download= false;
  }

  if (minh_max_next_seg_id + num_of_segs > hung_MAX_SEGMENTS) {
    num_of_segs = hung_MAX_SEGMENTS - minh_max_next_seg_id - 1;
  }
  if (num_of_segs <= 0){
    std::cerr << "[ERROR] No of requested segment (< 0): " << num_of_segs << std::endl;
    exit(EXIT_FAILURE);
    return;
  }
  
  std::string rate_string =  std::to_string(hung_rate_set.at(0));
  std::string num_string = std::to_string(num_of_segs);

  // if (client->add_request(hung_uri+"/rebuff/bitrate="+rate_string+"/num="+num_string, 
  //                           dang_data_prd, dang_data_length, dang_pri_spec)) {
  if (client->add_request(hung_uri+"/rebuff/sd="+std::to_string(hung_sd)+
                          "/bitrate="+rate_string+"/num="+num_string+"/start_seg="+std::to_string(minh_cur_seg_id), 
                          dang_data_prd, dang_data_length, dang_pri_spec)) {
    /* request example: ip:port/rebuff/sd=1000/bitrate=1000/num=4/start_seg=10 
    ** ==> download segments with Segment duration = 1000ms, bitate: 1000 kbps, # segments: 4 (i.e., segments 10, 11, 12, 13)
    */
    if (submit) {
      if(hung_cur_buff > rebuff_buff_thres_H){
        usleep((hung_cur_buff - rebuff_buff_thres_H) * 1000);
      }
      submit_request(client, hung_headers, client->reqvec.back().get());
      num_of_request++;
      sub_start_time = std::chrono::duration_cast<std::chrono::microseconds>(
                 get_time() - client->timing.connect_end_time).count();
    }
  }

  std::cout << "[REBUFF] bitrate " << rate_string << "\tnum " << num_string 
                            << std::endl << std::endl;  

  if (submit) client->signal_write();
}

// Hung: change the bitrate without refusing the stream
// Note that we disable adaptation until a new segment is fully received
void hung_req_vod_rate(HttpClient *client, int new_rate) {
  int num_of_segs = next_num;  

  if (minh_max_next_seg_id + num_of_segs > hung_MAX_SEGMENTS)
    num_of_segs = hung_MAX_SEGMENTS - minh_max_next_seg_id;
  if (num_of_segs <= 0){
    std::cout << "*********************************** k <=0 **************************************************" << std::endl; 
    return;
  }

  std::string rate_string = std::to_string(new_rate);
  std::string num_string = std::to_string(num_of_segs);
  std::string url = hung_uri+"/req_vod/sd="+std::to_string(hung_sd)+
                          "/bitrate="+rate_string+"/num="+num_string+"/start_seg="+std::to_string(minh_cur_seg_id);
  // std::cout << "\tNEXT url: " << url << std::endl;                          
  if (client->add_request(url, dang_data_prd, dang_data_length, dang_pri_spec)) {
    /* request example: ip:port/req_vod/sd=1000/bitrate=1000/num=4/start_seg=10 
    ** ==> download segments with Segment duration = 1000ms, bitate: 1000 kbps, # segments: 4 (i.e., segments 10, 11, 12, 13)
    */
  // if (client->add_request(hung_uri+"/req_vod/bitrate="+rate_string+"/num="+num_string, 
  //                           dang_data_prd, dang_data_length, dang_pri_spec)) {
    if(hung_cur_buff > vod_buff_thres_H){
      double temp_before = std::chrono::duration_cast<std::chrono::microseconds>(
                 get_time() - client->timing.connect_end_time).count()/1000;

      std:cout << "\t\t======== SLEEP: cur_buf: " << hung_cur_buff << " an sleep in " << (hung_cur_buff - vod_buff_thres_H) << " ms "
               << "from "<< temp_before << std::endl;

      usleep((hung_cur_buff - vod_buff_thres_H) * 1000);
    }
    submit_request(client, hung_headers, client->reqvec.back().get());
    num_of_request++;
    sub_start_time = std::chrono::duration_cast<std::chrono::microseconds>(
                 get_time() - client->timing.connect_end_time).count();  
  }

  std::cout << "[REQUEST NEW ] bitrate " << rate_string << "\tnum " << num_string 
                            << std::endl << std::endl;  

  client->signal_write();
}

// Hung: KPush method. Note that the way to compute the throughput is totally different segment thrp
// So, the Push-1 is different from HTTP/1.1-based method
// void hung_KPush_method (HttpClient *client) {
//   std::cout << std::endl << "[ADAPTATION] Invoke at time " << hung_sys_time << "ms \t Thrp: " 
//                            << (int)hung_inst_thrp << "kbps \t Buff: "<< hung_cur_buff << "ms" << std::endl;

//   if (hung_cur_buff <= hung_sd) {
//     hung_on_buffering = true;
//     hung_cur_buff = 0;
//     hung_req_vod_rebuff(client);
//     return;
//   } 

//   if (hung_on_buffering && hung_cur_buff == hung_tar_buff) {
//     hung_on_buffering = false;
//   }

//   int cur_index = hung_thrp_recorder.size()-1;
//   double sum = 0; int count = 0;
//   for (int i = cur_index; i > cur_index - 3; i--) 
//     if (i >= 0) { 
//       sum += hung_thrp_recorder.at(i); 
//       count++;
//     }
//   double avg_thrp = sum / count;

//   double avg_thrp_with_RTT = avg_thrp * (hung_K * hung_sd - hung_cur_rtt) / (hung_K * hung_sd);
//   // cannot use the segment throughput until we compute a rtt

//   double avail_thrp = (1 - hung_safety_margin) * hung_inst_thrp; 
//   int rate_candidate = hung_compute_max_adapted_rate (avail_thrp);
 
//   hung_req_vod_rate(client, rate_candidate);
// }
int getIndexByRate(int rate){
  for(int i=0;i<hung_rate_set.size();i++){
    if(rate==hung_rate_set.at(i))
      return i;
  }
  return -1;
}
/* 191028 Minh [live streaming for retransmission] ADD-S*/

void minh_get_rate_set(int m_hung_sd){
  std::cout << " *********************************** VIDEO: " << VIDEO_STRING[video] << " *********************************** " << std::endl;
  switch (video)
  {
    case RACENIGHT:
      switch (m_hung_sd){
        case 1000 :
          std::cout << " *********************************** Segment duration = 1s *********************************** " << std::endl;
          hung_rate_set = HEVC_RaceNight_1s; //hung_rate_set_1s;
          break;
        case 2000 :
          std::cout << " *********************************** Segment duration = 2s *********************************** " << std::endl;
          hung_rate_set = HEVC_RaceNight_12_versions; //HEVC_RaceNight_12_versions; //hung_rate_set_2s;
          break;
        case 4000 :
          std::cout << " *********************************** Segment duration = 4s *********************************** " << std::endl;
          hung_rate_set = HEVC_RaceNight_1s; //hung_rate_set_4s;
          break;
        case 6000 :
          std::cout << " *********************************** Segment duration = 6s *********************************** " << std::endl;
          hung_rate_set = HEVC_RaceNight_1s; //hung_rate_set_6s;
          break;                  
      }
      break;
    case BBB:
      hung_rate_set = HEVC_BBB;
      break;
    default:
      std::cerr << "This video is not in the server " << std::endl;
      exit(EXIT_FAILURE);
  }
  

  for (int a = 0; a < hung_rate_set.size(); a ++){
    std::cout << hung_rate_set.at(a) << ", ";
  }
  std::cout << " \n*************************************************************** " << std::endl;
}

void minh_get_ABR_parameters(ABR m_ABR){
  switch (minh_ABR){
    case AGG:
      hung_tar_buff = 16000;  // 16000  12000 8000
      buff_max       = 20000; // 20000  15000 10000
      minh_rebuff_exit = hung_tar_buff;

      rebuff_buff_thres_L = hung_tar_buff;
      rebuff_buff_thres_H = hung_tar_buff;

      vod_buff_thres_L = hung_tar_buff;
      vod_buff_thres_H = buff_max;  

      std::cout << "************ ABR: AGG **********" << '\n'
                << "hung_tar_buff: " << hung_tar_buff << '\n'
                << "buff_max: " << buff_max << '\n'
                << std::endl;  
      break;
    case SARA:
      hung_tar_buff    = B_a;
      buff_max         = B_m;
      minh_rebuff_exit = I;

      rebuff_buff_thres_L = I;
      rebuff_buff_thres_H = B_a;

      vod_buff_thres_L = I;
      vod_buff_thres_H = B_b;    

      std::cout << "************ ABR: SARA **********" << '\n'
                << "hung_tar_buff: " << hung_tar_buff << '\n'
                << "buff_max: " << buff_max << '\n'
                << std::endl;   
      break;
    case BBA:
      hung_tar_buff    = BBA_r + BBA_cu;
      buff_max         = BBA_Max;    
      minh_rebuff_exit = BBA_r;

      rebuff_buff_thres_L = BBA_r;
      rebuff_buff_thres_H = buff_max;

      vod_buff_thres_L = BBA_r;
      vod_buff_thres_H = buff_max;  

      std::cout << "************ ABR: BBA **********" << '\n'
                << "hung_tar_buff: " << hung_tar_buff << '\n'
                << "buff_max: " << buff_max << '\n'
                << std::endl;    
      break;
    default:
      minh_rebuff_exit = hung_tar_buff;
      std::cout << "*************** DEFAULT ABR **************" << std::endl;
      break;      
  } 
  retrans_buff_trigger_on = buff_max/2;
  retrans_buff_thres = buff_max/4;
  retrans_buff_cancel = buff_max/4;    
  duc_buff_low = hung_tar_buff/2;

  squad_buff_high = retrans_buff_trigger_on;
  squad_buff_low = retrans_buff_thres;  
}
int Duc_K_determination(){
  double cost_rq = 0;
  double cost_bf = 0;
  int temp = 1;

  if (hung_cur_buff > duc_buff_low){
    std::cout << "Duc_K_determination - 1" << std::endl;
    double min_cost = 100000;
    for (int i = 1; i <= 4; i ++){
      cost_rq = 1.0/i;
      cost_bf = (1.0*i*hung_sd)/(hung_buff_recorder.at(hung_buff_recorder.size()-1) - duc_buff_low);
      double sum_cost = alpha*cost_rq + (1-alpha)*cost_bf;

      if (min_cost > sum_cost){
        temp = i;
        min_cost = sum_cost;
      }
    }
  }
  else{
    std::cout << "Duc_K_determination - 2" << std::endl;
    if (hung_thrp_recorder.at(hung_thrp_recorder.size()-1) < hung_thrp_recorder.at(hung_thrp_recorder.size()-2)*0.9){  //thrp decreases
      temp = 1;
    }
    else if (hung_thrp_recorder.at(hung_thrp_recorder.size()-1) > hung_thrp_recorder.at(hung_thrp_recorder.size()-2)){
      duc_req_count --;
      if (duc_req_count == 0){
        duc_req_count = 2;
        temp = next_num + 1 > 4 ? 4 : next_num + 1;
      }
      else{
        temp = next_num; // do nothing ==> keep current next_num
      }
    }
    else {
      temp = next_num;
    }
  }
  
  std::cout << "[K-PUSH] next num: " << temp << std::endl;
  return temp;
}

double retrans_getAvgBitrate(){
    int sum = 0;
    int avg_period = (hung_rate_recorder.size() < retrans_avgBuffer_period) ? hung_rate_recorder.size() : retrans_avgBuffer_period;

    for (int i = 1; i <= avg_period; i++){
        std::cout << "bitrate " << i << " " << hung_rate_recorder.at(hung_rate_recorder.size() - i) << std::endl;
        sum += hung_rate_recorder.at(hung_rate_recorder.size() - i);
    }

    return sum*1.0 / avg_period;
};

void minh_terminate_segment(HttpClient *client){
  if(client->add_request(hung_uri+"/terminate_segment/", 
                            hung_data_prd, hung_data_length, hung_pri_spec)){
    submit_request(client, hung_headers, client->reqvec.back().get());
  }
  std::cout << "-------------------------- TERMINATE_RETRANSMISSION --------------------------" << std::endl;
}

void minh_retrans_segment(HttpClient *client, int new_rate, int retrans_rate, int pri_new_rate, int pri_retrans_rate, int needed_retrans_seg_id, int m_retrans_num, int m_next_num, bool submit=true){
    int final_next_num = m_next_num;
    next_num_remaining = m_next_num;
    retrans_num_remaining = m_retrans_num;

    // std::cout << "[INFO] " << __func__ << "(): next_num_remaining: " << next_num_remaining << std::endl;
    // std::cout << "[INFO] " << __func__ << "(): retrans_num_remaining: " << retrans_num_remaining << std::endl;

    if (hung_client_seg + final_next_num > hung_MAX_SEGMENTS)
      final_next_num = hung_MAX_SEGMENTS - hung_client_seg - 1;

    if (final_next_num < 0)
      return;

    std::string new_rate_string = std::to_string(new_rate);
    std::string retrans_rate_string = std::to_string(retrans_rate);

    // for retransmitted segment
    nghttp2_priority_spec_init(&dang_pri_spec, 11, pri_retrans_rate, 0);
    std::string url_retrans = hung_uri+"/retrans/bitrate=" + retrans_rate_string+"/num="+std::to_string(m_retrans_num)+"/start_seg_id="+ std::to_string(needed_retrans_seg_id);
    // std::cout << "\tRETRANS url: " << url_retrans << std::endl;

    if (client->add_request(url_retrans, dang_data_prd, dang_data_length, dang_pri_spec)) {
        if(submit)
            submit_request(client, dang_headers, client->reqvec.back().get()); 
        num_of_request++;
    }

    std::cout << "\t[RETRANS] seg [" << needed_retrans_seg_id 
              << "] at rate [" << retrans_rate << "]. Retrans_num " 
              <<  retrans_num_remaining << std::endl;//<< retrans_rate <<"] for segment: ["<< needed_retrans_seg_id +1 << "]\tfrom OLD bitrate: " << hung_rate_recorder.at(needed_retrans_seg_id) 
 

    // for next segment                                        
    nghttp2_priority_spec_init(&dang_pri_spec, 11, pri_new_rate, 0);    // Step 1: set priority
    // if (client->add_request(hung_uri+"/req_vod/sd="+std::to_string(hung_sd)+
    //                         "bitrate=" + new_rate_string+"/num=" + std::to_string(m_next_num), 
    //                         dang_data_prd, dang_data_length, dang_pri_spec)) {
    
    std::string url = hung_uri+"/req_vod/sd="+std::to_string(hung_sd)+
                          "/bitrate="+new_rate_string+"/num="+std::to_string(m_next_num)+"/start_seg="+std::to_string(minh_cur_seg_id);

    // std::cout << "\t NEXT url: " << url << std::endl;                          
    if (client->add_request(url, dang_data_prd, dang_data_length, dang_pri_spec)){      
      submit_request(client, hung_headers, client->reqvec.back().get());
      num_of_request++;
      sub_start_time = std::chrono::duration_cast<std::chrono::microseconds>(
             get_time() - client->timing.connect_end_time).count();    
    }

    std::cout << "\t[NEXT] seg [" << hung_rate_recorder.size()+1 
              << "] at rate [" << new_rate_string << "]. Next_num "// Step 3: print info
              << next_num_remaining << std::endl << std::endl;   

   // }
   //  else{
   //      int nghttp2_session_change_stream_priority(nghttp2_session *session, int32_t stream_id, const nghttp2_priority_spec *pri_spec)
   //  }
    client->signal_write();
}

/* 191114 Minh [retransmission] ADD-S*/
void compute_Smooth_thrp_est(){
  if (hung_rate_recorder.size() == 1){
    smoothedBW = minh_cur_thrp;
  }
  else {
    smoothedBW = (1 - minh_smooth_thrp_margin)*smoothedBW + minh_smooth_thrp_margin*minh_cur_thrp;
  }
}


////////////////////////////////////////////////////////////////////////////////////////////////
/* SARA ABR -S*/

double get_harmonic_thrp(){
  double m_harmonic_thrp = 0;
  if (hung_thrp_recorder.size()<1){
    m_harmonic_thrp = 1000;
  }
  else {
    harmonic_sum_TS += last_seg_data*8;
    harmonic_sum_MS += last_seg_data*8.0/hung_inst_thrp;
  }

  m_harmonic_thrp = harmonic_sum_TS*1.0/harmonic_sum_MS;
  std::cout << "*** Harmonic thrp: " << m_harmonic_thrp << std::endl;

  return m_harmonic_thrp;
}

int SARA_adaptation_method(){
  std::cout << "********* SARA **********" << std::endl;
  int m_next_rate = hung_rate_set.at(0);
  long m_sum_data = 0;
  long m_download_time = 0;
  double m_H_n = get_harmonic_thrp();

  int m_cur_rate = hung_rate_recorder.at(hung_rate_recorder.size()-1);
  int m_cur_quality = getIndexByRate(m_cur_rate);
  
  std::cout << "[PRINT VALUE] SARA - (m_cur_rate*hung_sd)/(m_H_n): " << (m_cur_rate*hung_sd)/(m_H_n)
            << "\t\t hung_cur_buff - I: " << hung_cur_buff - I
            << std::endl;

  if (hung_cur_buff <= I){
    m_next_rate = hung_rate_set.at(0);

    SARA_buff_thres = hung_cur_buff;
  }
  else if ((m_cur_rate*hung_sd)/(m_H_n) > (hung_cur_buff - I)){  // download time will be so much --> need to decrease level
    for (int i = 0; i <= m_cur_quality; i++){
      if (hung_rate_set.at(i)*hung_sd*1.0/m_H_n <= (hung_cur_buff - I)){
        m_next_rate = hung_rate_set.at(i);
      }
    }

    if (hung_cur_buff <= B_a){
      SARA_buff_thres = B_a/2.0; // B_a/2
    }
    else if (hung_cur_buff <=B_b){
      SARA_buff_thres = B_a;
    }
    else {
      SARA_buff_thres = B_b;
    }
  }
  else if (hung_cur_buff <= B_a){
    std::cout << "****SARA -3- hung_cur_buff " << hung_cur_buff << std::endl;
    if (m_cur_quality < hung_rate_set.size()-1 && 
        hung_rate_set.at(m_cur_quality+1)*hung_sd*1.0/m_H_n < hung_cur_buff - I ){
      m_next_rate = hung_rate_set.at(m_cur_quality+1);
    }
    else  {
      m_next_rate = m_cur_rate;
    }

    SARA_buff_thres = B_a/2.0;
  }
  else if (hung_cur_buff <= B_b){
    std::cout << "****SARA -4- hung_cur_buff " << hung_cur_buff<< std::endl;
    for (int i = m_cur_quality; i < hung_rate_set.size(); i++){
      if (hung_rate_set.at(i)*hung_sd*1.0/m_H_n < hung_cur_buff - I){
        m_next_rate = hung_rate_set.at(i);
      }
    }

    SARA_buff_thres = B_a;
  }
  else if (hung_cur_buff > B_b){
    std::cout << "****SARA -5- hung_cur_buff " << hung_cur_buff << std::endl;
    for (int i = m_cur_quality; i < hung_rate_set.size(); i++){
      if (hung_rate_set.at(i)*hung_sd*1.0/m_H_n < hung_cur_buff - B_a){
        m_next_rate = hung_rate_set.at(i);
      }
    }

    SARA_buff_thres = B_b;
  }
  else {
    m_next_rate = m_cur_rate;

    if (hung_cur_buff <= B_a){
      SARA_buff_thres = B_a/2.0;
    }
    else if (hung_cur_buff <=B_b){
      SARA_buff_thres = B_a;
    }
    else {
      SARA_buff_thres = B_b;
    }    
  }

  return m_next_rate;
}
/* SARA ABR -E*/

////////////////////////////////////////////////////////////////////////////////////////////////
int BBA_adaptation_method(){
  std::cout << "************* BBA ***********************" << std::endl;
  const double          BBA_a = 1.0*(hung_rate_set.at(hung_rate_set.size()-1) - hung_rate_set.at(0))/(BBA_cu);
  const double          BBA_b = hung_rate_set.at(0) - 1.0*BBA_r*BBA_a;

  int m_next_rate = 0;
  int m_rate_plus = 0;
  int m_rate_subtract = 0;
  int m_cur_rate = hung_rate_recorder.at(hung_rate_recorder.size()-1);
  int m_cur_rate_idx = getIndexByRate(m_cur_rate);
  double m_cur_buff = hung_buff_recorder.at(hung_buff_recorder.size()-1);

  f_buff_value = BBA_a*m_cur_buff + BBA_b; // (kbps)
  /////////////////////////////////////////////////////////////////////////
  if (m_cur_rate == hung_rate_set.at(hung_rate_set.size()-1)){
    // std::cout << "**** BBA -1-" << std::endl;
    m_rate_plus = m_cur_rate;
  }
  else {
    // std::cout << "**** BBA -2-" << std::endl;
    m_rate_plus = hung_rate_set.at(m_cur_rate_idx+1);
  }
  /////////////////////////////////////////////////////////////////////////
  if (m_cur_rate_idx == 0){
    // std::cout << "**** BBA -3-" << std::endl;
    m_rate_subtract = m_cur_rate;
  }
  else{
    // std::cout << "**** BBA -4-" << std::endl;
    m_rate_subtract = hung_rate_set.at(m_cur_rate_idx-1);
  }
  /////////////////////////////////////////////////////////////////////////
  if (m_cur_buff <= BBA_r){
    std::cout << "**** BBA -5-" << std::endl;
    m_next_rate = hung_rate_set.at(0);

    BBA_buff_thres = BBA_r;
  }
  else if (m_cur_buff >= BBA_r + BBA_cu){
    std::cout << "**** BBA -6-" << std::endl;
    m_next_rate = hung_rate_set.at(hung_rate_set.size()-1);

    BBA_buff_thres = BBA_r + BBA_cu;
  }
  else if (f_buff_value >= m_rate_plus){
    std::cout << "**** BBA -7-" << std::endl;
    for (int i = 0; i < hung_rate_set.size(); i++){
      if (f_buff_value > hung_rate_set.at(i))
        m_next_rate = hung_rate_set.at(i);
    }

    double m_lower_bound_bitrate = hung_compute_max_adapted_rate(f_buff_value);
    BBA_buff_thres = (m_lower_bound_bitrate - BBA_b)*1.0/BBA_a;// BBA_a*m_cur_buff + BBA_b;
  }
  else if (f_buff_value <= m_rate_subtract){
    std::cout << "**** BBA -8-" << std::endl;
    for (int i = hung_rate_set.size()-1; i >=0; i--){
      if (f_buff_value < hung_rate_set.at(i)){
        m_next_rate = hung_rate_set.at(i);
      }
    }

    double m_lower_bound_bitrate = hung_compute_max_adapted_rate(f_buff_value);
    BBA_buff_thres = (m_lower_bound_bitrate - BBA_b)*1.0/BBA_a;// BBA_a*m_cur_buff + BBA_b;
  }
  else{
    std::cout << "**** BBA -9-" << std::endl;
    m_next_rate = m_cur_rate;

    double m_lower_bound_bitrate = hung_compute_max_adapted_rate(f_buff_value);
    BBA_buff_thres = (m_lower_bound_bitrate - BBA_b)*1.0/BBA_a;// BBA_a*m_cur_buff + BBA_b;
  }

  return m_next_rate;
}

////////////////////////////////////////////////////////////////////////////////////////////////
double get_smooth_thrp(){
  if (hung_rate_recorder.size() == 1){
    smoothedBW = minh_cur_thrp;
  }
  else {
    smoothedBW = (1 - minh_smooth_thrp_margin)*smoothedBW +
                 minh_smooth_thrp_margin*hung_thrp_recorder.at(hung_thrp_recorder.size()-1);
  }

  return smoothedBW;
}
////////////////////////////////////////////////////////////////////////////////////////////////
double get_harmonic_thrp_FESTIVE_ABR(){
  double m_harmonic_thrp = 0;
  double m_sum_thrp = 0;
  int    m_harmonic_length = 20;
  int    m_thrp_length = hung_thrp_recorder.size();
  if (m_thrp_length < 1){
    m_harmonic_thrp = 2000;
  }
  else {
    if (m_thrp_length < 20)
      m_harmonic_length = m_thrp_length;

    for (int a = 1; a <= m_harmonic_length; ++a){
      m_sum_thrp += 1.0/hung_thrp_recorder.at(m_thrp_length-a);
    }
    m_harmonic_thrp = m_harmonic_length*1./m_sum_thrp;
  }
  std::cout << "[PRINT VALUE] m_harmonic_thrp: " << m_harmonic_thrp << std::endl;

  return m_harmonic_thrp;
}

////////////////////////////////////////////////////////////////////////////////////////////////
void FESTIVE_adaptation_method(){
  // 1. estimate throughput: harmonic throughput
  double m_thrp_est = get_harmonic_thrp_FESTIVE_ABR();

  // 2. compute reference rate, increase/decrease rate as a function of bitrate ????

  // 3. cost tradeoff between current and ref. rate

  // 4. choose randomized target buffer size to determine when sending request

}

////////////////////////////////////////////////////////////////////////////////////////////////
void minh_get_thrp_est (){
    thrp_est = minh_cur_thrp; //0.9* minh_cur_thrp + 0.1* hung_thrp_recorder.at(hung_rate_recorder.size()-1);    
}
////////////////////////////////////////////////////////////////////////////////////////////////
// void minh_get_thrp_est (NETWORK_ACK m_network_ack, int next_num){
//   if (m_network_ack == NO){
//     thrp_est = 0.9* minh_cur_thrp + 0.1* hung_thrp_recorder.at(hung_rate_recorder.size()-1);    
//   }
//   else{
//     int current_time = (int) hung_sys_time/1000; // in milliseconds
//     int end_time = hung_sys_time + hung_sd*next_num;
//     for (int i = current_time )
//     thrp_est = origin_thrp;   
//   }
// }
////////////////////////////////////////////////////////////////////////////////////////////////
void retransmission_method(HttpClient *client){
  std::cout << "~~~~~~~~~~~~~~~~~~~~ PROPOSAL ~~~~~~~~~~~~~~~~~~~~~~~~" << std::endl;
  int rate_recorder_length = hung_rate_recorder.size();
  int curr_bitrate = hung_rate_recorder.at(rate_recorder_length-1); 
  int new_rate = -1;

  if (hung_on_buffering && hung_cur_buff >= minh_rebuff_exit) { //rebuffering ends
    std::cout << "End rebuffering\n" 
              << "hung_on_buffering: " << hung_on_buffering << '\n'
              << "hung_cur_buff: " << hung_cur_buff << '\n'
              << "minh_rebuff_exit: " << minh_rebuff_exit << '\n'
              << std::endl;
    if (hung_client_seg > minh_rebuff_exit/hung_sd){
      playout_start_time = std::chrono::duration_cast<std::chrono::milliseconds>(            // time from beginning to end segment
                                          get_time() - client->timing.connect_end_time).count();
      int tmp_local_rebuff_duration = playout_start_time - minh_rebuff_start;
      minh_rebuff_duration += tmp_local_rebuff_duration;
      minh_rebuff_duration_recorder.push_back(tmp_local_rebuff_duration);  // in ms
      stall_time_duration_vector.push_back(tmp_local_rebuff_duration/1000.0);
      
      std::cout << "************************ START TO PLAYOUT ***************************\n"
                << "Local rebuff duration: " << tmp_local_rebuff_duration << "ms\t"
                << "Total rebuff duration: " << minh_rebuff_duration << "ms" << std::endl;
    }
    else {
      start_play_time = std::chrono::duration_cast<std::chrono::milliseconds>(
                                  get_time() - client->timing.connect_end_time).count(); 
      std::cout << "Startup phase ENDED at time " << start_play_time << "ms\n";
    }

    // [20.06.30] delete unceccessary lines DEL-S
    rebuffering_while_download = false;
    hung_on_buffering = false;
  }
  else if (!hung_on_buffering && hung_cur_buff < hung_sd) {  // Buffer < 1 segment. Rebuffering. NO RETRANSMISSION NECESSARY
    std::cout << "Start rebuffering" << std::endl;
    minh_rebuff_start = std::chrono::duration_cast<std::chrono::milliseconds>(
                 get_time() - client->timing.connect_end_time).count();
    hung_on_buffering = true;
    // [20.06.30] delete unceccessary lines DEL-S
    #if 0
    buffering_just_stop = false;
    hung_cur_buff = 0;
    #endif
    // [20.06.30] delete unceccessary lines DEL-E
    playout_start = false;
    hung_req_vod_rebuff(client);
    return;
  }
  else if (hung_on_buffering && hung_cur_buff < minh_rebuff_exit) { // still rebuffering for AGG ABR
    // [20.06.30] delete unceccessary lines DEL-S
    #if 0
    buffering_just_stop = false;
    #else
    std::cout << "Still rebuffering" << std::endl;
    if (rebuffering_while_download){
      hung_req_vod_rebuff(client);
    }
    #endif
    // [20.06.30] delete unceccessary lines DEL-E
    return;
  }

  minh_get_thrp_est();
  minh_thrp_est_recorder.push_back(thrp_est);

// always compute next bitrate and next num
  switch(minh_ABR){
    case AGG:
      std::cout << "**************** AGG *******************" << std::endl;
      new_rate = hung_compute_max_adapted_rate(thrp_est * (1-hung_safety_margin));  // for AGG ABR
      break;
    case SARA:
      new_rate = SARA_adaptation_method(); // for SARA ABR
      break;
    case BBA:
      new_rate = BBA_adaptation_method(); // for BBA ABR
      break;
    default:
      std::cout << "******************************** NO ABR AVAILABLE *****************************" << std::endl;
      break;
  }
  next_num = (hung_sd >= 4000) ? 1 : Duc_K_determination();
  next_num_remaining = next_num;

  // [20.06.30] delete unceccessary lines DEL-S
  #if 0
  if (!hung_on_buffering && !buffering_just_stop){ //just stop rebuffering
    buffering_just_stop = true;
    //new_rate = 1500;
    //std::cout << "--- STOP REBUFFERING CHOOSE BITRATE 1500 ---" << std::endl;
  }
  #endif
  // [20.06.30] delete unceccessary lines DEL-E
    
  int num_buffer_segment =  (int) hung_cur_buff/hung_sd; 
  int buff_level_array[num_buffer_segment][2];

  for (int i = 0; i < num_buffer_segment; i++){ // initialization
    buff_level_array[i][0] = 0;
    buff_level_array[i][1] = 0;
  }


// 0. trigger retrans
  if (thrp_est > new_rate && 
    minh_retrans_trigger == false && 
    rate_recorder_length > num_buffer_segment &&
    hung_buff_recorder.at(rate_recorder_length-1) >= retrans_buff_trigger_on && 
    minh_retrans_extension){  
    std::cout << "--- TRIGGER ON ---"<< std::endl;
    minh_retrans_trigger = true;
  } 
  else if (hung_buff_recorder.at(rate_recorder_length-1) < retrans_buff_thres ||
              !minh_retrans_extension){ 
    minh_retrans_trigger = false;
    std::cout << "*********************** NO RETRANS *************************** " << std::endl;
  }

// 1. If retrans trigger is ON
  if (minh_retrans_trigger){
    int arr_index = 0;
    for (int buff_index = num_buffer_segment; buff_index > 0; ){
      do {
        buff_level_array[arr_index][0] = hung_rate_recorder.at(rate_recorder_length - buff_index);
        buff_level_array[arr_index][1] ++;
        buff_index --;
      } while (buff_index > 0 && buff_level_array[arr_index][0] == hung_rate_recorder.at(rate_recorder_length - buff_index));
      arr_index ++;
    }

    #if 0
    std::cout << "TEST COUNT BUFFER ELEMENTS -S" << std::endl;
    std::cout << "Rate recorder: \n";
    for (int j = num_buffer_segment; j > 0; j--){
      std::cout << hung_rate_recorder.at(rate_recorder_length-j) << ' ' << rate_recorder_length-j+1 << std::endl;;
    }
    std::cout << std::endl;
    for (int i = 0; i < num_buffer_segment && buff_level_array[i][1] != 0 ; i ++){
      std::cout << i << " "<< buff_level_array[i][0] << " " << buff_level_array[i][1] << std::endl;
    } 
    std::cout << "TEST COUNT BUFFER ELEMENTS -E" << std::endl; 
    #endif

    // 1.1 if buffer just has 1 level ==> 
    if (buff_level_array[1][1] == 0){ // only 1 buff level ==> no retransmititng
      // 20.07.19 delete redundancy DEL-S
      #if 0
      retrans_transmitting = false;
      retrans_transmitting_period = false;      
      #endif
      // 20.07.19 delete redundancy DEL-E
      minh_next_num_recorder.push_back(next_num);      
      hung_req_vod_rate(client, new_rate);  //continue with current ABR // no retransmission          
      return;
    }    
    else{
      // List all gap regions
      std::vector<int> retrans_gap_region_index;

      for (int i = 0; i < num_buffer_segment && buff_level_array[i+1][1] != 0; i++){
        if (i == 0 &&
            buff_level_array[i][0] < buff_level_array[i+1][0]){
          retrans_gap_region_index.push_back(i);
          // std::cout << "\tGap region index " << i << std::endl;
        }
        else if (buff_level_array[i][0] < buff_level_array[i-1][0] &&
                 buff_level_array[i][0] < buff_level_array[i+1][0]){ 
          retrans_gap_region_index.push_back(i);
          // std::cout << "\tGap region index " << i << std::endl;
        }
      }

      // if there's no gap region
      if (retrans_gap_region_index.size() == 0){
        // 20.07.19 delete redundancy DEL-S
        #if 0
        retrans_transmitting = false;
        retrans_transmitting_period = false;
        #endif
        // 20.07.19 delete redundancy DEL-E
        minh_next_num_recorder.push_back(next_num);      
        hung_req_vod_rate(client, new_rate);  //continue with current ABR // no retransmission    
        return;       
      }  
      else{ // if there's at least 1 gap region
        for (auto a = retrans_gap_region_index.begin(); a != retrans_gap_region_index.end(); ++a){

          // std::cout << "region index: " << *a << std::endl;
          // determine the segment idx of this gap region
          int num_buff_seg_before_curr = 0;
          for (int i = 0;i < *a; i++){
            num_buff_seg_before_curr += buff_level_array[i][1];
          }
          int first_seg_idx = rate_recorder_length - num_buffer_segment + num_buff_seg_before_curr + 1;
          int last_seg_idx = first_seg_idx + buff_level_array[*a][1] - 1;

          #if 0
          std::cout << "first_seg_idx: " << first_seg_idx << '\n'
                    << "last_seg_idx : " << last_seg_idx << std::endl;
                    << "rate_recorder_length: " << rate_recorder_length << '\n'
                    << "num_buffer_segment: " << num_buffer_segment << '\n'
                    << "num_buff_seg_before_curr: " << num_buff_seg_before_curr << '\n'
                    << "buff_level_array[*a][1]: " << buff_level_array[*a][1] << std::endl;
          #endif
          //determine what is the retrans_rate and the number of retransmitted segment
          for (int j = first_seg_idx; j <= last_seg_idx; j++){
            int     m_t_avai = j*hung_sd + minh_rebuff_duration + start_play_time - hung_sys_time;
            // std::cout << "current consider segment: " << j << " avai. time (ms): " << m_t_avai << std::endl;

            //[20.06.30] Allow a segment to be retransmitted multiple time DEL-S
            #if 0
            if ((retrans_retransmitted_seg_recorder.size() > 0 &&             
                  j <= retrans_retransmitted_seg_recorder.at(retrans_retransmitted_seg_recorder.size()-1) &&
                  hung_rate_recorder.at(j-1) != minh_rate_recorder.at(j-1))) { // retransmitted successfully
              std::cout << "*********************** initial check ****************" << std::endl;
              continue;
            }
            #else
            
            if (!minh_optimize_bitrate &&   // no optimizing bitrate ==> only retrans. a segment once.
                  retrans_retransmitted_seg_recorder.size() > 0 &&             
                  j <= retrans_retransmitted_seg_recorder.at(retrans_retransmitted_seg_recorder.size()-1) &&
                  hung_rate_recorder.at(j-1) != minh_rate_recorder.at(j-1)) { // retransmitted successfully

              // std::cout << "*********************** initial check ****************" << std::endl;

              continue;
            }
            #endif
            //[20.06.30] Allow a segment to be retransmitted multiple time DEL-E

            int max_bitrate = buff_level_array[*a+1][0];
            int min_bitrate = buff_level_array[*a+1][0];

            if (*a != 0 && 
                buff_level_array[*a+1][0] < buff_level_array[*a-1][0]){
              max_bitrate = buff_level_array[*a-1][0];
            }            
            else if (*a == 0){
              min_bitrate = hung_rate_set.at(getIndexByRate(hung_rate_recorder.at(j-1))+1);
            }
            else {
              min_bitrate = buff_level_array[*a-1][0];
            }

            int m_retrans_buff_thres = 100000;
            switch(minh_ABR){
              case AGG:
                if (hung_cur_buff > buff_max/2){
                  m_retrans_buff_thres = buff_max/2;
                }
                else {
                  m_retrans_buff_thres = retrans_buff_thres;
                }
                // std::cout << "AGG - m_retrans_buff_thres: " << m_retrans_buff_thres << std::endl;
                break;
              case SARA:
                m_retrans_buff_thres = SARA_buff_thres;
                // std::cout << "SARA - m_retrans_buff_thres: " << m_retrans_buff_thres << std::endl;
                break;
              case BBA: // buffer based
                m_retrans_buff_thres = BBA_buff_thres;
                // std::cout << "BBA - m_retrans_buff_thres: " << m_retrans_buff_thres << std::endl;
                break;
              default:
                std::cout << "******************************** NO ABR AVAILABLE *****************************" << std::endl;
                break;
            }
            std::cout << "curr_buff: " << hung_cur_buff << std::endl;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            retrans_num = last_seg_idx + 1 - j; //k_r
            // [20.06.30] update code ADD-S
            #if 0
            double temp_A = (hung_cur_buff + next_num*hung_sd - m_retrans_buff_thres)/hung_sd;
            double temp_B = (temp_A*thrp_est - next_num*new_rate)/retrans_num;
            #else
            if (m_t_avai <= 0)
              continue;

            double temp_A = hung_cur_buff + next_num*hung_sd*(1-new_rate/thrp_est) - m_retrans_buff_thres;
            double temp_B = retrans_num*hung_sd/thrp_est;
            temp_B = temp_A/temp_B;
            #endif
            // [20.06.30] update code ADD-E

            // std::cout << "min_bitrate " << min_bitrate << '\n'
            //           << "temp_B " << temp_B << '\n'
            //           << "max_bitrate " << max_bitrate << '\n' << std::endl;
            static double retrans_thrp = 0;

            for (int k = getIndexByRate(hung_compute_max_adapted_rate(max_bitrate)); 
                     k >= getIndexByRate(min_bitrate); k--){
              int m_cur_rate = hung_rate_set.at(k);
              retrans_thrp = m_cur_rate*hung_sd/m_t_avai;

              if (m_cur_rate <= temp_B && retrans_thrp < thrp_est){
                retrans_rate = m_cur_rate;
                std::cout << "Found retrans rate: " << retrans_rate << "(< temp_B)" << std::endl;
                retrans_num = last_seg_idx + 1 - j;
                found_rates = true;
                needed_retrans_seg_id = j;   
                break;             
              }
              else {
                found_rates = false;
              }
            }
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            if (!found_rates){
              std::cout << "----------------------------CAN'T FOUND ANY RATE. MOVE TO THE NEXT SEGMENT. Current j: " << j << std::endl;
              retrans_transmitting = false;
              retrans_transmitting_period = false; 
              continue; // go to the next segment
            }
            else{
              retrans_transmitting = true;
              retrans_transmitting_period = true; 

              // [20.06.30] update code ADD-S
              #if 0
              double allocated_thrp_new = (thrp_est - retrans_rate > 0) ? thrp_est - retrans_rate : 1 ; //t_1*hung_sd;
              double allocated_thrp_retrans = retrans_rate; //t_2*hung_sd;
              int m_divider = 10;
              if (allocated_thrp_retrans > 2550 || allocated_thrp_new > 2550)
                m_divider = 100;
              pri_new_rate     = MIN((int) (allocated_thrp_new/m_divider), 256);
              pri_retrans_rate = MIN((int) (allocated_thrp_retrans/m_divider), 256);
              #else
              double temp_thrp_proportion = retrans_thrp/(thrp_est - retrans_thrp);
              if (temp_thrp_proportion > 1){
                pri_retrans_rate = 256;
                pri_new_rate =  (int) pri_retrans_rate/temp_thrp_proportion;
              }
              else {
                pri_new_rate = 256;
                pri_retrans_rate =  (int) pri_new_rate*temp_thrp_proportion;
              }
              #endif
              // [20.06.30] update code ADD-E

              minh_pri_proportion_recorder.push_back((double) pri_new_rate*1.0/pri_retrans_rate);

              minh_next_num_recorder.push_back(next_num);
              minh_retrans_num_recorder.push_back(retrans_num);

              for (int i = needed_retrans_seg_id; i < needed_retrans_seg_id + retrans_num; i++){
                retrans_retransmitted_seg_recorder.push_back(i);
              }

              minh_retrans_data = retrans_rate*hung_sd/8000;
              minh_next_data    = new_rate*hung_sd/8000;
              minh_retrans_segment(client, new_rate, retrans_rate, pri_new_rate, pri_retrans_rate, needed_retrans_seg_id, retrans_num, next_num);
              std::cout <<"***** Minh_2: needed_retrans_seg_id: " << needed_retrans_seg_id << std::endl;
              std::cout << "***** Minh_2: RETRANS INFO new and retrans \n" << new_rate << "\t" << pri_new_rate  << "\n"
                                                         << retrans_rate << "\t" << pri_retrans_rate << "\n"
                                                         << std::endl;
              return;
            }
          }
        }

        // scan all gap regions but can't retransmit
        std::cout <<  "SCAN ALL GAP REGIONS BUT NO RETRANSMITTING" << std::endl;
        retrans_transmitting = false;
        retrans_transmitting_period = false; 
        minh_next_num_recorder.push_back(next_num);      
        hung_req_vod_rate(client, new_rate);  //continue with current ABR // no retransmission    
        return;        
      }
    }
  }
  else{ // just sent RST request ==> no retransmisison, wait until buffer is high enough.
    // call ABR here
    std::cout << "--- TRIGGER OFF ---"<< std::endl;
    minh_next_num_recorder.push_back(next_num);      
    hung_req_vod_rate(client, new_rate);  //continue with current ABR // no retransmission    
    return;  
  }    
///////////////////////////////////////////////////////////////////////////////////////////////   

// retransmisison algorithm -E        
}
///////////////////////////////////////////////////////////////////////////////////////////////
void retransmission_SQUAD_method(HttpClient *client){
  std::cout << "~~~~~~~~~~~~~~~~~~~~ SQUAD ~~~~~~~~~~~~~~~~~~~~~~~~" << std::endl;
  int rate_recorder_length = hung_rate_recorder.size();
  int curr_bitrate = hung_rate_recorder.at(rate_recorder_length-1); 
  int new_rate = -1;

  if (hung_on_buffering && hung_cur_buff >= minh_rebuff_exit) { //rebuffering ends
    std::cout << "End rebuffering\n" 
              << "hung_on_buffering: " << hung_on_buffering << '\n'
              << "hung_cur_buff: " << hung_cur_buff << '\n'
              << "minh_rebuff_exit: " << minh_rebuff_exit << '\n'
              << std::endl;
    if (hung_client_seg > minh_rebuff_exit/hung_sd){
      playout_start_time = std::chrono::duration_cast<std::chrono::milliseconds>(            // time from beginning to end segment
                                          get_time() - client->timing.connect_end_time).count();
      int tmp_local_rebuff_duration = playout_start_time - minh_rebuff_start;
      minh_rebuff_duration += tmp_local_rebuff_duration;
      minh_rebuff_duration_recorder.push_back(tmp_local_rebuff_duration);  // in ms
      
      std::cout << "************************ START TO PLAYOUT ***************************\n"
                << "Local rebuff duration: " << tmp_local_rebuff_duration << "ms\t"
                << "Total rebuff duration: " << minh_rebuff_duration << "ms" << std::endl;
    }
    else {
      start_play_time = std::chrono::duration_cast<std::chrono::milliseconds>(
                                  get_time() - client->timing.connect_end_time).count(); 
      std::cout << "Startup phase ENDED at time " << start_play_time << "ms\n";
    }

    // [20.06.30] delete unceccessary lines DEL-S
    rebuffering_while_download = false;
    hung_on_buffering = false;
  }
  else if (!hung_on_buffering && hung_cur_buff < hung_sd) {  // Buffer < 1 segment. Rebuffering. NO RETRANSMISSION NECESSARY
    std::cout << "Start rebuffering" << std::endl;
    minh_rebuff_start = std::chrono::duration_cast<std::chrono::milliseconds>(
                 get_time() - client->timing.connect_end_time).count();
    hung_on_buffering = true;
    // [20.06.30] delete unceccessary lines DEL-S
    #if 0
    buffering_just_stop = false;
    hung_cur_buff = 0;
    #endif
    // [20.06.30] delete unceccessary lines DEL-E
    playout_start = false;
    hung_req_vod_rebuff(client);
    return;
  }
  else if (hung_on_buffering && hung_cur_buff < minh_rebuff_exit) { // still rebuffering for AGG ABR
    // [20.06.30] delete unceccessary lines DEL-S
    #if 0
    buffering_just_stop = false;
    #else
    std::cout << "Still rebuffering" << std::endl;
    if (rebuffering_while_download){
      hung_req_vod_rebuff(client);
    }
    #endif
    // [20.06.30] delete unceccessary lines DEL-E
    return;
  }

  minh_get_thrp_est();
  minh_thrp_est_recorder.push_back(thrp_est);

// always compute next bitrate and next num
  switch(minh_ABR){
    case AGG:
      std::cout << "**************** AGG *******************" << std::endl;
      new_rate = hung_compute_max_adapted_rate(thrp_est * (1-hung_safety_margin));  // for AGG ABR
      break;
    case SARA:
      new_rate = SARA_adaptation_method(); // for SARA ABR
      break;
    case BBA:
      new_rate = BBA_adaptation_method(); // for BBA ABR
      break;
    default:
      std::cout << "******************************** NO ABR AVAILABLE *****************************" << std::endl;
      break;
  }
  next_num = (hung_sd >= 4000) ? 1 : Duc_K_determination();
  next_num_remaining = next_num;

  /*191110 squad_retransmisison -S*/    
  if (hung_buff_recorder.at(hung_buff_recorder.size()-1) >= squad_buff_high && squad_retrans_trigger == false){  //trigger retrans
    std::cout << "****** SQUAD TRIGGER ON **********" << std::endl;
    squad_retrans_trigger = true;
  } else if (hung_buff_recorder.at(hung_buff_recorder.size()-1) < squad_buff_low){
    std::cout << "****** SQUAD TRIGGER OFFFFF **********" << std::endl;
    squad_retrans_trigger = false;
  }
     
  int num_buffer_segment =  (int) hung_cur_buff/hung_sd; // segments from minh_max_next_seg_id back to minh_max_next_seg_id - (num_buffer_segment-1)
  int buff_level_array[num_buffer_segment][2];

  if (squad_retrans_trigger){ //check buffer segment to consider retransmisison

    for (int i = 0; i < num_buffer_segment; i++){
      buff_level_array[i][0] = 0;
      buff_level_array[i][1] = 0;
    }

    int arr_index = 0;
    for (int buff_index = num_buffer_segment; buff_index > 0; ){
      do {
        buff_level_array[arr_index][0] = hung_rate_recorder.at(rate_recorder_length - buff_index);  //check again 20.7.21
        buff_level_array[arr_index][1] ++;
        buff_index --;
      } while (buff_index > 0 && buff_level_array[arr_index][0] == hung_rate_recorder.at(rate_recorder_length - buff_index));
      arr_index ++;
    }

    std::cout << "TEST COUNT BUFFER ELEMENTS -S" << std::endl;
    std::cout << "Rate recorder: \n";
    for (int j = num_buffer_segment; j > 0; j--){
      std::cout << hung_rate_recorder.at(rate_recorder_length-j) << ' ' << rate_recorder_length-j+1 << std::endl;;
    }
    std::cout << std::endl;

    for (int i = 0; i < num_buffer_segment && buff_level_array[i][1] != 0 ; i ++){
      std::cout << i << " "<< buff_level_array[i][0] << " " << buff_level_array[i][1] << std::endl;
    } 
    // std::cout << "TEST COUNT BUFFER ELEMENTS -E" << std::endl;  

    if (buff_level_array[1][1] == 0){ // only 1 buff level ==> no retransmititng      
      minh_next_num_recorder.push_back(next_num);      
      hung_req_vod_rate(client, new_rate);  //continue with current ABR // no retransmission          
      return;
    }

    // ranking segment
    std::vector<int> arr_narrowest_gap_id;  //id buffer of buffer level
    std::vector<int> arr_max_switch_id;     //id buffer of buffer level

    int              narrowest_gap = 50000;
    int              max_switch    = 20000;
    int              min_quality   = 20000;
    
    int              considered_buff_level_id = -1;
    int              temp_index_distance = 0;

    for (int i = 1; i < num_buffer_segment && buff_level_array[i][1] != 0; i++){
      // Rank 1: find the narrowest gap
      if (buff_level_array[i][0] < buff_level_array[i-1][0] &&
          buff_level_array[i][0] < buff_level_array[i+1][0]){ 
        if (buff_level_array[i][1] < narrowest_gap){
          narrowest_gap = buff_level_array[i][1];
          
          arr_narrowest_gap_id.clear();
          arr_narrowest_gap_id.push_back(i);
          // std::cout << "\tRank 1: Narrowest gap id " << i << std::endl;
        }
        else if (buff_level_array[i][1] == narrowest_gap){
          arr_narrowest_gap_id.push_back(i);
          // std::cout << "\tRank 1: Narrowest gap id ***" << i  << std::endl;
        }
      }
    }

    // print out
    for (auto a = arr_narrowest_gap_id.begin(); a != arr_narrowest_gap_id.end(); ++a){
      std::cout << "\tRank 1: FINAL Narrowest gap id " << *a  << std::endl;
    }

    // Rank 2: if arr_narrowest_gap.size() > 1
    if (arr_narrowest_gap_id.size() > 1){
      for (auto a = arr_narrowest_gap_id.begin(); a != arr_narrowest_gap_id.end(); ++a){

       // int min_target = buff_level_array[*a-1][0] < buff_level_array[*a+1][0] ? buff_level_array[*a-1][0] : buff_level_array[*a+1][0];
        int switch_step = buff_level_array[*a-1][0] - buff_level_array[*a][0];

        if (switch_step > max_switch ){
          max_switch = switch_step;
          arr_max_switch_id.clear();
          arr_max_switch_id.push_back(*a);
        }
        else if (switch_step == max_switch){
          arr_max_switch_id.push_back(*a);
        }
      }
    }
    else if (arr_narrowest_gap_id.size() == 1){ // no rank 2 and rank 3 consideration    
      considered_buff_level_id = arr_narrowest_gap_id.at(0);
    }

    // print out
    for (auto a = arr_max_switch_id.begin(); a != arr_max_switch_id.end(); ++a){
      std::cout << "\tRank 2: Max Switch gap id " << *a << std::endl;
    }

    // Rank 3: if arr_max_switch.size() > 1   
    if (arr_max_switch_id.size() == 1){
      considered_buff_level_id = arr_max_switch_id.at(0);       
    }
    else if (arr_max_switch_id.size() > 1){
      for (auto a = arr_max_switch_id.begin(); a != arr_max_switch_id.end(); ++a){
        if (buff_level_array[*a][0] < min_quality){
          min_quality = buff_level_array[*a][0];
          considered_buff_level_id = arr_max_switch_id.at(*a);
        }
      }
      std::cout << "\tRank 3: considered_buff_level_id = " << considered_buff_level_id << std::endl;
    } 

    // print out
    std::cout << "\tFINALLY: considered_buff_level_id = " << considered_buff_level_id << std::endl;

    if (considered_buff_level_id != -1){ // need retransmission
      temp_index_distance = buff_level_array[considered_buff_level_id][1];
      retrans_num = temp_index_distance; //(temp_index_distance < 4 ) ? temp_index_distance : 4;
      
      if (considered_buff_level_id == 0){
        retrans_rate = buff_level_array[considered_buff_level_id + 1][0];
      }
      else{
        retrans_rate = (buff_level_array[considered_buff_level_id + 1][0] < buff_level_array[considered_buff_level_id - 1][0]) ?
                        buff_level_array[considered_buff_level_id + 1][0] :
                        buff_level_array[considered_buff_level_id - 1][0] ;

      }

      pri_new_rate = 1;
      pri_retrans_rate = 1;

      int sum = 0;
      for (int i = 0; i < considered_buff_level_id; i ++){
        sum += buff_level_array[i][1];
      }

      needed_retrans_seg_id = hung_rate_recorder.size() - num_buffer_segment + sum +1;

      squad_avai_time.clear();

      for (int l = 0; l < retrans_num; l++){
       retrans_retransmitted_seg_recorder.push_back(needed_retrans_seg_id + l);
       // m_avai_time_arr[l][0] = needed_retrans_seg_id + l;
       squad_avai_time.push_back(hung_cur_buff + (needed_retrans_seg_id + l+1)*1000 - rate_recorder_length*1000);
       std::cout << "\t---- Avai_time_ seg_idx " << l+1 << "is "<< squad_avai_time.at(l) << "ms" << std::endl;
       squad_retransmitting_seg_idx = 0;
      }          

      retrans_transmitting = true;
      retrans_transmitting_period = true;

      minh_next_num_recorder.push_back(next_num);
      minh_retrans_num_recorder.push_back(retrans_num);

      squad_retrans_start_time = std::chrono::duration_cast<std::chrono::milliseconds>(
                                get_time() - client->timing.connect_end_time).count();

      minh_retrans_segment(client, new_rate, retrans_rate, pri_new_rate, pri_retrans_rate, needed_retrans_seg_id, retrans_num, next_num);
      std::cout << "***** Minh_2: RETRANS INFO \n" << "start_seg_id " << needed_retrans_seg_id << "\n"
                                                   << "retrans_rate " << retrans_rate << std::endl;             
    }
    else {  // no retransmitting
      std:cout << "NO RETRANMISISON" << std::endl;
      minh_next_num_recorder.push_back(next_num);      
      hung_req_vod_rate(client, new_rate);  //continue with current ABR // no retransmission 
      return;
    }
  }
  else{ // just sent RST request ==> no retransmisison, wait until buffer is high enough.
    // call ABR here
    minh_next_num_recorder.push_back(next_num);      
    hung_req_vod_rate(client, new_rate);  //continue with current ABR // no retransmission    
    return;  
  }    
}
///////////////////////////////////////////////////////////////////////////////////////////////

void get_inst_thrp (TRACE_MODE mode, long m_sub_download_time_us, double m_temp_thrp){
  if (mode == TRACE_3G){ // 3G
    std::cout << "=============== TRACE_3G ==================" << std::endl;
    if (hung_rate_recorder.size() == 0){
      hung_inst_thrp = 1000;
    }
    else if (m_sub_download_time_us > 50000 && m_temp_thrp > 10)
      hung_inst_thrp = m_temp_thrp;
    else 
      hung_inst_thrp = hung_thrp_recorder.at(hung_rate_recorder.size()-1);

    if(hung_inst_thrp > 4000) 
      hung_inst_thrp = hung_thrp_recorder.at(hung_rate_recorder.size()-1);  // thuc ra k dung lam  
  }
  else if (mode == TRACE_4G){ // 4G
    std::cout << "~~~~~~~~~~~~~~~~ TRACE_4G ~~~~~~~~~~~~~~~~" << std::endl;
    // if (m_sub_download_time_us > 20000 || hung_rate_recorder.size() == 0)
      hung_inst_thrp = (m_temp_thrp > 60000) ? 60000 : m_temp_thrp; // limit the measured throughput.
    // else 
    //   hung_inst_thrp = hung_thrp_recorder.at(hung_rate_recorder.size()-1);
  }
  else if (mode == TRACE_5G){ // 5G
    std::cout << "~~~~~~~~~~~~~~~~ TRACE_5G ~~~~~~~~~~~~~~~~" << std::endl;
    hung_inst_thrp = MIN(m_temp_thrp, 300000);
    if (m_temp_thrp == 0){
      hung_inst_thrp = 200000;
    }
  }
  else {
    std::cerr << "[ERROR-get_inst_thrp()] Wrong Network type. Available types (3G, 4G, 5G)" << std::endl;
  }
}
/* 191114 Minh [retransmission] ADD-E*/

namespace {
int on_stream_close_callback(nghttp2_session *session, int32_t stream_id,
                             uint32_t error_code, void *user_data) {
  auto client = get_client(user_data);
  auto req = static_cast<Request *>(
      nghttp2_session_get_stream_user_data(session, stream_id));

  if (!req) {
    return 0;
  }

  // If this request is using Expect/Continue, stop its ContinueTimer.
  if (req->continue_timer) {
    req->continue_timer->stop();
  }

  update_html_parser(client, req, nullptr, 0, 1);
  ++client->complete;

 std::cout << "\n****************** CLOSE STREAM ******************" << std::endl;
 std::cout << "* Minh * path\t " << req->make_reqpath() << std::endl;

  if (req->stream_id % 2 == 0) {
    hung_client_seg = hung_get_seg_from_uri(req->make_reqpath());    
    int rate = hung_get_rate_from_uri(req->make_reqpath());
    minh_max_next_seg_id = MAX(hung_client_seg, minh_max_next_seg_id);

    hung_sys_time = std::chrono::duration_cast<std::chrono::milliseconds>(
                      get_time() - client->timing.connect_end_time).count(); 
    last_seg_data = req->response_len;

    // to measure inst_thrp
    long sub_end_time = std::chrono::duration_cast<std::chrono::microseconds>(            // time from beginning to end segment
                 req->timing.response_end_time - client->timing.connect_end_time).count();
    std::cout << "* Minh * current time: " << hung_sys_time << "ms\n" 
              << "* Minh * current seg id: " << hung_client_seg << '\n'
              // << "* Minh * max seg id: " << minh_max_next_seg_id << '\n'

              << std::endl;

    // to measure inst_thrp
    long sub_download_time_us = sub_end_time - sub_start_time;
    auto temp_thrp = (double) sub_downloaded_data * 8 * 1000 / sub_download_time_us;
    get_inst_thrp (TRACE_4G, sub_download_time_us, temp_thrp);

    minh_thrp_measured_recorder.push_back(hung_inst_thrp);  // recorder every time a segment is downloaded completely
         
/*#############################################################################################################################################*/
    if (minh_get_type_from_uri_1(req->make_reqpath()) == "/RETRANS" && !termination_trigger){  // stream nay la stream cho segment retransmitted 
      long retrans_download_time = std::chrono::duration_cast<std::chrono::microseconds>(            // time from beginning to end segment
                 req->timing.response_end_time - req->timing.response_start_time).count(); 
      retrans_num_remaining --;

      std:: cout << "[RETRANS] received retransmitted seg " 
                << hung_client_seg << " in " << (retrans_download_time*1.0 / 1000) << "ms"
                << " at time " << hung_sys_time << "ms."
                << " # retrans remaining: " << retrans_num_remaining
                << std::endl;

      std::cout << "\t Retrans with whole thrp: " << hung_inst_thrp << std::endl;   

      // compute thrp -E      
      // double temp_retrans_buff = (hung_client_seg*hung_sd - (hung_buff_recorder.size()*hung_sd - hung_buff_recorder.at(hung_buff_recorder.size()-1)) - retrans_download_time)/1000.0;  // in second
      double temp_retrans_buff = hung_client_seg*hung_sd + minh_rebuff_duration + start_play_time - hung_sys_time;
      // double temp_retrans_buff = (hung_client_seg*1000 - (hung_sys_time - playout_start_time))/1000.0; //second
      std::cout << "\t Retrans buff_1: " << temp_retrans_buff << "ms" << std::endl;
      retrans_buffer_recorder.push_back(temp_retrans_buff);

      num_success_retrans ++;
      amount_waste_data += minh_data_downloaded_recorder.at(hung_client_seg-1);
      hung_rate_recorder.at(hung_client_seg-1) = rate;
      minh_data_downloaded_recorder.at(hung_client_seg-1) = req->response_len;
      minh_rate_ret_id_recorder.at(hung_client_seg-1) = getIndexByRate(rate)+1;
      retrans_check = false; 
      found_rates = false;     
      int m_retrans_segment_size = retrans_retransmitted_seg_recorder.size();
      std::cout << "m_retrans_segment_size: " << m_retrans_segment_size << std::endl;

      if (!retrans_transmitting_period &&
         (hung_client_seg == retrans_retransmitted_seg_recorder.at(m_retrans_segment_size-1) || termination_trigger)){ // k period va day la retransmitted seg cuoi cung
        retrans_transmitting = false;
        minh_cur_thrp = hung_inst_thrp;
        int minh_sys_time = std::chrono::duration_cast<std::chrono::milliseconds>(
                 get_time() - client->timing.connect_end_time).count();       

        // [20.06.30] correct some mistake MOD-S
        #if 0
        hung_cur_buff -= (minh_sys_time - hung_last_adapt_time); 
        #else
        long temp_buff = (minh_max_next_seg_id)*hung_sd + minh_rebuff_duration + start_play_time - hung_sys_time;
        if (temp_buff < 0)
          hung_cur_buff = 0;
        else
          hung_cur_buff = temp_buff;
        #endif
        // [20.06.30] correct some mistake MOD-E

        // std::cout << "############# last retrans hung_cur_buff: " << hung_cur_buff << "ms" << std::endl;

      }
      else if (retrans_num_remaining == 0 || termination_trigger) {  // the last segment of this retrasmitting session
        retrans_transmitting = false;
        termination_trigger = false;
        termination_finish = true;
        if (next_num_remaining == 0){
          retrans_transmitting_period = false;
        }
        std::cout << "[INFO] RETRANS DONE! retrans_num_remaining: " << retrans_num_remaining << std::endl;
      }  
      else {
        // do nothing
      }
    }
    else if (termination_trigger){
      std::cout << "============================================= termination_trigger ===========" << std::endl;
      termination_trigger = false;
    }
    else {  // NEXT SEGMENT STREAMS
      next_num_remaining--;

      // std::cout << "[INFO] next_num_remaining: " << next_num_remaining << std::endl;

      minh_cur_seg_id ++;
      hung_sys_time = std::chrono::duration_cast<std::chrono::milliseconds>(  // to compute buffer after donload each normal segment
                      get_time() - client->timing.connect_end_time).count();
      // to measure buffer
      long seg_download_time_us = std::chrono::duration_cast<std::chrono::microseconds>(
                                  req->timing.response_end_time - req->timing.response_start_time).count();                        

      std::cout << "[INFO] NEW SEGMENT downloaded in " << (seg_download_time_us / 1000) << "ms";  

      std::cout << "\t with whole thrp: " << hung_inst_thrp  << "Kbps" << std::endl;

      // Compute RTT but be careful because of live streaming. RTT has to be computed by PING
      hung_seg_recorder.push_back(hung_client_seg);
      hung_time_recorder.push_back(hung_sys_time);
      time_download_recorder.push_back(seg_download_time_us/1000);
      hung_rate_recorder.push_back(rate);
      minh_data_downloaded_recorder.push_back(req->response_len) ;
      minh_rate_ret_id_recorder.push_back(getIndexByRate(rate)+1);

      // compute buffer -S
      // [20.06.30] correct some mistake MOD-S
      #if 0
      if (hung_on_buffering){
          if (minh_rebuff_sent)
            hung_cur_buff += hung_sd;
          else
            hung_cur_buff = 0;
      }
      else{
          hung_cur_buff = (hung_cur_buff + hung_sd - (hung_sys_time - hung_last_adapt_time)) > 0 ?
                          hung_cur_buff + hung_sd - (hung_sys_time - hung_last_adapt_time) : 
                          0;
      }
      #else
      if (!rebuffering_while_download){
        if (!hung_on_buffering){
          long temp_buff = (minh_max_next_seg_id-1)*hung_sd + minh_rebuff_duration + start_play_time - hung_sys_time;
          if (temp_buff < 0){
            stall_duration_before_update = -temp_buff;
            hung_on_buffering = true;  // comment to fix the buffer prob after rebuffering while downloading
            hung_cur_buff = hung_sd;
            rebuffering_while_download = true;
            minh_rebuff_start = std::chrono::duration_cast<std::chrono::milliseconds>(
                   get_time() - client->timing.connect_end_time).count() - stall_duration_before_update; 
            minh_stall_start_time.push_back(minh_rebuff_start);

            std::cout << "\tRebuffering while downloading. Duration (ms): " << stall_duration_before_update << std::endl;
          }
          else {
            hung_cur_buff = temp_buff + hung_sd;
          }
        }
        else {
          hung_cur_buff += hung_sd;
        }  
      }
      else {
        hung_cur_buff += hung_sd;
        hung_on_buffering = true;
      }
      
      #endif 
      // [20.06.30] correct some mistake MOD-E
      hung_buff_recorder.push_back(hung_cur_buff);
      hung_last_adapt_time = hung_sys_time; 
      // compute buffer -E  


/* 191029 Minh [live streaming for retransmission] ADD-S*/        
      minh_rate_recorder.push_back(rate);
      minh_rate_old_id_recorder.push_back(getIndexByRate(rate)+1);
      normal_thrp_recorder.push_back(hung_inst_thrp);

      if (retrans_transmitting && retrans_transmitting_period){ // if RETRANSMITTING is in process
        double temp_thrp = 0;

        hung_thrp_recorder.push_back(hung_inst_thrp);
        minh_cur_thrp = hung_inst_thrp;

        if (next_num_remaining <= 0){ // all next segments are downloaded
          retrans_transmitting_period = false;
          std::cout << "[INFO] NEXT DONE. retrans_num_remaining: " << retrans_num_remaining << std::endl;
        }
      } 
      else if (!retrans_transmitting && retrans_transmitting_period){ // NEU da download all retransmitted segments and this next segment is the last one
        hung_thrp_recorder.push_back(hung_inst_thrp);
        minh_cur_thrp = hung_inst_thrp;
      }
      else{ // no retransmitting
        hung_thrp_recorder.push_back(hung_inst_thrp); 
        minh_cur_thrp = hung_inst_thrp;
      }
/* 191029 Minh [live streaming for retransmission] ADD-E*/          
    }    

    sub_downloaded_data = 0;
    sub_start_time = sub_end_time;
    std::cout << "[DONE] received SEG # " << hung_client_seg << " Buff: " << hung_cur_buff << std::endl;
    std::cout << "-------------------------------------------------------------------------------------------------------------------------" << std::endl;       
/* 191103 Minh [Kpush with retransmission] ADD-E*/        
  } else {
    std::cout << "type of path: " << minh_get_type_from_uri_2(req->make_reqpath()) << std::endl;
    std::cout << "retrans_transmitting: " << retrans_transmitting << "\t"
              << "retrans_transmitting_period: " << retrans_transmitting_period << '\n'
              << "RETRANS num remaining: " << retrans_num_remaining << "\t"
              << "NEXT num remaining: " << next_num_remaining << std::endl;

    if ( (hung_client_seg < hung_MAX_SEGMENTS) &&
         (minh_get_type_from_uri_2(req->make_reqpath()) == "rebuff" ||
            (retrans_num_remaining <= 0 && retrans_transmitting == false && minh_get_type_from_uri_2(req->make_reqpath()) == "req_vod") || 
            (next_num_remaining <= 0 && retrans_transmitting_period == false && minh_get_type_from_uri_2(req->make_reqpath()) == "retrans"))) {
      // std::cout << "[INFO] New pushing cycle " << std::endl;

      if (minh_retransmission_method == PROPOSAL){
        retransmission_method(client);
      }
      else if (minh_retransmission_method == SQUAD){
        retransmission_SQUAD_method(client);
      }
      else if (minh_retransmission_method == NONE){
        retransmission_method(client);
      }
      else {
        std::cerr << "[ERROR] Don't know what to run " << std::endl;
        exit(EXIT_FAILURE);
      }
    }
    // }
  }

  // Hung: receive stream_id
 // std::cout << "[DONE] receive stream " << req->stream_id << " Thrp: " << hung_inst_thrp << " Buff: " << hung_cur_buff << hung_client_seg << std::endl << std::endl;
  //print_timer();

  if (client->all_requests_processed()) {
    nghttp2_session_terminate_session(session, NGHTTP2_NO_ERROR);
  }

  return 0;
}
} // namespace

struct RequestResult {
  std::chrono::microseconds time;
};

namespace {
// [20.07.23] * Calculating the Yin QoE Model * ADD-S
int   get_quality_from_bitrate(int bitrate){
  return bitrate;
}

double get_Yin_QoE_score(std::vector<int> bitrate_vector, double sum_stall, double startup_delay){ // unit: seconds
  std::cout << __func__ << std::endl;
  const int sigma_1 = 1;
  const int sigma_2 = hung_rate_set.at(hung_rate_set.size()-1);
  const int sigma_3 = hung_rate_set.at(hung_rate_set.size()-1);

  double sum_quality  = 0;
  double sum_switch   = 0;

  double final_qoe_score = 0;
  // first term: average bitrate level 
  for (int i = 0; i < bitrate_vector.size(); i++){
    sum_quality += get_quality_from_bitrate(bitrate_vector.at(i));
  }

  // second term: switches
  for (int i = 0; i < bitrate_vector.size()-1; i++){
    sum_switch += abs(get_quality_from_bitrate(bitrate_vector.at(i+1)) - 
                      get_quality_from_bitrate(bitrate_vector.at(i)));
  }

  final_qoe_score = sum_quality - sigma_1*sum_switch - sigma_2*sum_stall - sigma_3*startup_delay;
  return final_qoe_score;
}
// [20.07.23] * Calculating the Yin QoE Model * ADD-E


/******************************************************************************************/
// [20.07.23] * Calculating the ITU QoE Model * ADD-S
/* Get Resolution*/
std::string get_resolution(int m_duration, int m_bitrate){
  switch (m_duration){
    case 1 :
      if (m_bitrate <= 1800)
        return "720x480";
      else if (m_bitrate <= 5400)
        return "1280x720";
      else if (m_bitrate <= 9000)
        return "1920x1080";
      else if (m_bitrate <= 18000)
        return "3840x2160";
      else 
        return "3840x2160";     
      break;

    case 2 :
      if (m_bitrate <= 1800)
        return "720x480";
      else if (m_bitrate <= 5400)
        return "1280x720";
      else if (m_bitrate <= 9000)
        return "1920x1080";
      else if (m_bitrate <= 18000)
        return "3840x2160";
      else 
        return "3840x2160";     
      break;  

    case 4 :
      if (m_bitrate <= 1800)
        return "720x480";
      else if (m_bitrate <= 5400)
        return "1280x720";
      else if (m_bitrate <= 9000)
        return "1920x1080";
      else if (m_bitrate <= 18000)
        return "3840x2160";
      else 
        return "3840x2160";     
      break;

    case 6 :
      if (m_bitrate <= 1800)
        return "720x480";
      else if (m_bitrate <= 5400)
        return "1280x720";
      else if (m_bitrate <= 9000)
        return "1920x1080";
      else if (m_bitrate <= 18000)
        return "3840x2160";
      else 
        return "3840x2160";     
      break;            
  }
}

/* Get Stall events */
#if 0
void get_stall_duration(){
  std::cout << "[ITU_QOE] Getting stall duration " << std::endl;
  const int DURATION = hung_sd/1000;

  for (int i = 0; i < buffer_vector.size(); i ++){
    if (buffer_vector.at(i) < DURATION && 
      ((buffer_vector.at(i+1) == DURATION) ||
       (buffer_vector.at(i+1) == buffer_vector.at(i)))){

      std::cout << "buffer " << i << ": " << buffer_vector.at(i) << std::endl;
      stall_time_stamp.push_back(time_stamp_vector.at(i));
      int j = 1;
      while (buffer_vector.at(i+j) == 0 || buffer_vector.at(i+j) - buffer_vector.at(i+j-1) == DURATION){
        ++j;
      }

      double end_stall =  time_stamp_vector.at(i+j);
      std::cout << "stall_start: " << time_stamp_vector.at(i) << " at " << i+1;
      std::cout << " stall_end: " << end_stall << " at " << i + j+1 << std::endl;
      stall_time_duration_vector.push_back(end_stall - time_stamp_vector.at(i));
    }
  }
}
#endif


/* Create JSON file*/
void write_QoE_json_file(std::vector<int> bitrate_vector, std::string m_DIRECTION){
/*
/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/Squad_Aggressive/191218_1402/
/home/minh/1.OwnCloud/Documents/1_Proposal/1_Retransmission/3_Journal/Experimental-Results/H2BR_HEVC/NETWORK_4G/PL_0/SD_1000ms/ABR_AGG/RETRANS_NONE/2020-06-29_102750
*/  
  std::cout << "[ITU_QOE] Creating JSON file for ITU QoE Model" << std::endl;

  const std::string FPS     = "30.0";
  const std::string CODEC   = "\"hevc\"";
  const int DURATION = hung_sd/1000;
  std::vector<std::string> name_part;
  std::ofstream re_ofile;

  re_ofile.open(m_DIRECTION + "/ITU_QoE_mode0.json");

  re_ofile << R"({
    "I11": {
      "_comment": " This is for audio",
        "segments": [],
        "streamID": 42
    },
    "I13": {
      "_comment": " This is for video",
        "segments": [)" << std::endl;        

// retransmisison propertise
    for (int i = 0; i < bitrate_vector.size(); i ++){
      re_ofile << "\t\t\t{\n"
           << "\t\t\t\t" << R"("bitrate": )" + std::to_string(bitrate_vector.at(i)) + ",\n"
           << "\t\t\t\t" << R"("codec": )" +  CODEC + ",\n" 
           << "\t\t\t\t" << R"("duration": )" +  std::to_string(DURATION) + ",\n"
           << "\t\t\t\t" << R"("fps": )" +  FPS + ",\n"
           << "\t\t\t\t" << R"("resolution": ")" + get_resolution(DURATION, bitrate_vector.at(i)) + "\",\n" 
           << "\t\t\t\t" << R"("start": )" +  std::to_string(i*DURATION) + "\n" ;
      if ( i != bitrate_vector.size()-1){
        re_ofile << "\t\t\t},\n";
      }
      else 
        re_ofile << "\t\t\t}\n";           
    }

    re_ofile << R"(
        ],
        "streamId": 42
    },
    "I23": {
        "stalling": [
          [0, 0.0001])";

    for (int i = 0; i < stall_time_duration_vector.size(); i ++){
      re_ofile <<",\n";
      re_ofile << "\t\t\t[" + std::to_string(stall_time_stamp.at(i)) +", "
           << std::to_string(stall_time_duration_vector.at(i))
           << "]";
    }

    re_ofile << R"(],
        "streamId": 42
    },
    "IGen": {
        "device": "pc",
        "displaySize": "3840x2160",
        "viewingDistance": "70cm"
    }
})" << std::endl;

  re_ofile.close();
  std::cout << "Created these files: " << std::endl;
}

/* Execute cmd to calculate QoE score*/

// [20.07.23] * Calculating the ITU QoE Model * ADD-E
double exec(const char* cmd) {
  std::cout << "[ITU_QOE] Executing command line to calculate QoE score" << std::endl;
  std::array<char, 128> buffer;
  std::string result;
  std::unique_ptr<FILE, decltype(&pclose)> pipe(popen(cmd, "r"), pclose);
  double QoE = 0;
  if (!pipe) {
      throw std::runtime_error("popen() failed!");
  }
  while (fgets(buffer.data(), buffer.size(), pipe.get()) != nullptr) {
      result += buffer.data();

      if (buffer.at(3) == 'O' && 
        buffer.at(4) == '4' && 
        buffer.at(5) == '6'){

        // std::cout << buffer.at(9) << ' ' << buffer.at(11) << ' ' << buffer.at(12) << std::endl;
        QoE = 100 * (buffer.at(9)- '0') ;
        QoE += 10*(buffer.at(11) - '0');
        QoE += buffer.at(12) - '0';
        QoE = QoE/100.0;
        // std::cout << "********************* QoE 4 **************************" << QoE << std::endl;
      }
      
  }
  return QoE;
}

/* Main function to calculate ITU QoE Model*/
double get_ITU_QOE(std::string output_direction){
  // get_stall_duration();
  write_QoE_json_file(hung_rate_recorder, output_direction);

  // go to the ITU lib folder
  int temp = system("cd /home/minh/4_ITU-T_P1203/itu-p1203-codecextension");
  std::cout << "Run system(cd /iut codecextension): " << temp << std::endl;
  // char one[256] = "./calculate.py -m 0 /home/minh/Documents/ITU-T_QoE/itu-p1203/minh_retransmission/";
  std:string m_cmd = "./calculate.py -m 0 " + output_direction + "/ITU_QoE_mode0.json";
  std::cout << "[ITU_QOE] Running this commad: " << m_cmd << std::endl;

  double QoE_score = exec(m_cmd.c_str());
  std::cout << "[ITU_QOE] ITU QoE score: " << QoE_score << std::endl;
  return QoE_score;
}
/******************************************************************************************/
void print_stats(const HttpClient &client) {
  std::cout << "***** Statistics *****" << std::endl;

// [20.06.25] * Create result dir automatically * ADD-S
  time_t  rawTime;
  struct tm* timeInfo;
  char timeBuff[20];

  time (&rawTime);
  timeInfo = localtime(&rawTime);
  strftime(timeBuff, 20, "%F_%H%M%S", timeInfo);

  // kill dummynet
  const string dummynet_file = "complex_" + TRACE_STRING[minh_trace_mode] + "_"
                                + "PL_" + std::to_string(minh_packet_loss) + ".sh";
  std::cout << "Dummynet file: " << dummynet_file << std::endl;                                               
  const string dummynet_kill = "sudo killall bash ./" + dummynet_file;
  std::cout << "\n\t[MINH] INFO: Kill dummynet: " << dummynet_kill << std::endl;
  if (system(dummynet_kill.c_str())) {std::cout << "Could not Kill DummyNet" << std::endl; }

  // create a direction
  int m_max_seg_idx = MIN(hung_MAX_SEGMENTS, hung_rate_recorder.size());

  // only create files if this streaming session is successful
  
  const string result_direction = "/home/http2client/Documents/http_result/H2BR_HEVC/"  + VIDEO_STRING[video] +
                                "/NETWORK_" + TRACE_STRING[minh_trace_mode]                 +
                                "/PL_"      + std::to_string(minh_packet_loss)+
                                "/SD_"      + std::to_string(hung_sd) + "ms"  + 
                                "/BUF_"     + std::to_string(buff_max) + "ms" +
                                "/ABR_"     + ABR_STRING[minh_ABR]            + 
                                "/RETRANS_" + RETRANS_METHOD_STRING[minh_retransmission_method] + 
                                "_"         + H2BR_MODE_STRING[minh_optimize_bitrate]           +
                                "/"         + std::string(timeBuff);
  if (m_max_seg_idx >= hung_MAX_SEGMENTS){                                  
    const string create_directories = "mkdir -p " + result_direction;                           
    int a_1 = system(create_directories.c_str()); 

    string cp_files = "sudo cp /home/http2client/HTTP2_src/nghttp2-1.16.0/src/nghttp.cc /home/http2client/HTTP2_src/nghttp2-1.16.0/src/"
                      + dummynet_file + " " + result_direction;     

    int b = system(cp_files.c_str());
  }
// [20.06.25] * Create result dir automatically * ADD-E

  std::vector<Request *> reqs;
  reqs.reserve(client.reqvec.size());
  for (const auto &req : client.reqvec) {
    if (req->timing.state == RequestState::ON_COMPLETE) {
      reqs.push_back(req.get());
    }
  }

  std::sort(std::begin(reqs), std::end(reqs),
            [](const Request *lhs, const Request *rhs) {
              const auto &ltiming = lhs->timing;
              const auto &rtiming = rhs->timing;
              return ltiming.response_end_time < rtiming.response_end_time ||
                     (ltiming.response_end_time == rtiming.response_end_time &&
                      ltiming.request_start_time < rtiming.request_start_time);
            });

  std::cout << R"(
Request timing:
  responseEnd: the  time  when  last  byte of  response  was  received
               relative to connectEnd
 requestStart: the time  just before  first byte  of request  was sent
               relative  to connectEnd.   If  '*' is  shown, this  was
               pushed by server.
      process: responseEnd - requestStart
         code: HTTP status code
         size: number  of  bytes  received as  response  body  without
               inflation.
          URI: request URI

see http://www.w3.org/TR/resource-timing/#processing-model

sorted by 'complete'

id  responseEnd responseStart requestStart  process code size request path)" << std::endl;

  // Hung: 
  const auto &base = client.timing.connect_end_time;
  for (const auto &req : reqs) {
    auto response_end = std::chrono::duration_cast<std::chrono::microseconds>(
        req->timing.response_end_time - base);
    auto response_start = std::chrono::duration_cast<std::chrono::microseconds>(
        req->timing.response_start_time - base);
    auto request_start = std::chrono::duration_cast<std::chrono::microseconds>(
        req->timing.request_start_time - base);
    auto total = std::chrono::duration_cast<std::chrono::microseconds>(
        req->timing.response_end_time - req->timing.request_start_time);
    auto pushed = req->stream_id % 2 == 0;

    std::cout << std::setw(3) << req->stream_id << " " << std::setw(11)
              << ("+" + util::format_duration(response_end)) << " " << std::setw(13)
              << ("+" + util::format_duration(response_start)) << " "
              << (pushed ? "*" : " ") << std::setw(11)
              << ("+" + util::format_duration(request_start)) << " "
              << std::setw(8) << util::format_duration(total) << " "
              << std::setw(4) << req->status << " " << std::setw(4)
              << util::utos_unit(req->response_len) << " "
              << req->make_reqpath() << std::endl;
  }

  double avg_ret_bitrate = 0;
  double avg_new_bitrate = 0;
  double avg_ret_idx = 0;
  double avg_old_idx = 0;

  double lowest_buff = 100000;

  int    num_switch = 0;
  int    num_switch_no_retrans = 0;
  // int    num_success_retrans = 0;

  // // Hung: Doan nay tinh thoi gian, sau do in ra (sua roi nhe)
  if (m_max_seg_idx >= hung_MAX_SEGMENTS){
    ofstream MyExcelFile, log, parameters;
  
    MyExcelFile.open(result_direction + "/statistic.ods");
    MyExcelFile << "Time\tThrp\tRe_Bitrate\tBitrate\tBuffer\tRetrans\tDownloadTime\tRe_id\tOl_id\tDataDownloaded" << endl;  
    std::cout << std::endl << "The statistics: " << std::endl;
    std::cout << "Index \tTime \tThrp \tRate \tM_Rate \tBuffer \tRetrans \tRe_id \tol_id" << std::endl;

    for (int i = 0; i < m_max_seg_idx; i++) {
      int temp_bitrate_diff = hung_rate_recorder.at(i) - minh_rate_recorder.at(i);

      std::cout << hung_seg_recorder.at(i)          << "\t"
                << hung_time_recorder.at(i)/1000.0  << "\t"
                << hung_thrp_recorder.at(i)         << "\t"
                << hung_rate_recorder.at(i)         << "\t"
                << minh_rate_recorder.at(i)         << "\t"
                << hung_buff_recorder.at(i)/1000.0  << "\t" 
                << temp_bitrate_diff                << "\t"
                << minh_rate_ret_id_recorder.at(i)  << "\t"
                << minh_rate_old_id_recorder.at(i)  <<std::endl;

      
      MyExcelFile << hung_time_recorder.at(i)/1000.0  << '\t'  
                  << hung_thrp_recorder.at(i)         << '\t'
                  << hung_rate_recorder.at(i)         << '\t'
                  << minh_rate_recorder.at(i)         << '\t'
                  << hung_buff_recorder.at(i)/1000.0  << '\t'
                  << temp_bitrate_diff                << '\t'
                  << time_download_recorder.at(i)/1000<< '\t'
                  << minh_rate_ret_id_recorder.at(i)  << '\t'
                  << minh_rate_old_id_recorder.at(i)  << '\t'
                  << minh_data_downloaded_recorder.at(i) << endl;
    }


    MyExcelFile.close();

    log.open(result_direction + "/retrans_buffer_recorder.txt"); 
    log << "Seg_id\tAvai_time" << endl;
    for (int n = 0; n < retrans_buffer_recorder.size(); n++){
      log << retrans_retransmitted_seg_recorder.at(n) +1 << '\t'
          << retrans_buffer_recorder.at(n) << endl;
    }
    log << endl << "--------------------- Pri_new / Pri_retrans ----------------------------" << endl;
    for (auto a = minh_pri_proportion_recorder.begin(); a != minh_pri_proportion_recorder.end(); ++a){
      log << *a << endl;
    }
    log << endl << "--------------------- Terminated segments ----------------------------" << endl;
    if (minh_retrans_terminated_seg_recorder.size() > 0){
      for (auto a = minh_retrans_terminated_seg_recorder.begin(); a != minh_retrans_terminated_seg_recorder.end(); a++){
        log << *a << endl;
      }
    }
    log.close();

    for (int i = 0; i < m_max_seg_idx; i ++){
      // avg_bitrate
      avg_ret_bitrate += hung_rate_recorder.at(i);
      avg_new_bitrate += minh_rate_recorder.at(i);

      // avg_idx
      avg_ret_idx += minh_rate_ret_id_recorder.at(i);
      avg_old_idx += minh_rate_old_id_recorder.at(i);

      // lowest buff
      if (hung_buff_recorder.at(i) < lowest_buff && i >= hung_tar_buff/hung_sd)
        lowest_buff = hung_buff_recorder.at(i);

      // num_switch after retrans
      if (i != hung_rate_recorder.size()-1 && hung_rate_recorder.at(i) > hung_rate_recorder.at(i+1))
        num_switch ++;

      // num_switch_no_retrans
      if (i != minh_rate_recorder.size()-1 && minh_rate_recorder.at(i) > minh_rate_recorder.at(i+1))
        num_switch_no_retrans ++;      
    }

    avg_ret_bitrate = avg_ret_bitrate*1.0/m_max_seg_idx;
    avg_new_bitrate = avg_new_bitrate*1.0/m_max_seg_idx;

    avg_ret_idx     = avg_ret_idx*1.0/m_max_seg_idx;
    avg_old_idx     = avg_old_idx*1.0/m_max_seg_idx;

    parameters.open(result_direction + "/parameters.txt");
    parameters << "- hung_rate_set = {";
    for (int a = 0; a < hung_rate_set.size(); a ++){
      parameters << hung_rate_set.at(a) << ", ";
    }

    double QoE_itu_score = 0;//get_ITU_QOE(result_direction);
    double QoE_yin_score = get_Yin_QoE_score(hung_rate_recorder, minh_rebuff_duration/1000, start_play_time/1000);

    parameters  << "};" << '\n'
                << "[CONFIG] Segment duration: " << hung_sd << "\n"
                << "[CONFIG] Num of segments: " << m_max_seg_idx << "\n" 
                << "[CONFIG] Retrans_extension {False, True}: " << minh_retrans_extension  << "\n"
                << "[CONFIG] minh_optimize_bitrate {False, True}: " << minh_optimize_bitrate << "\n"
                << "[CONFIG] Retransmission_method {PROPOSAL, SQUAD}: " << RETRANS_METHOD_STRING[minh_retransmission_method]  << "\n"
                << "[CONFIG] ABR {AGG, SARA, BBA}: " << ABR_STRING[minh_ABR]  << "\n"
                << "[CONFIG] Network Type {TRACE_3G, TRACE_4G, TRACE_5G}: " << TRACE_STRING[minh_trace_mode]  << "\n"
                << "[CONFIG] minh_packet_loss = " << minh_packet_loss  << "%\n\n"

                << "- buff_max = " << buff_max << '\n'
                << "- hung_tar_buff = " << hung_tar_buff << '\n'
                << "- retrans_buff_thres = " << retrans_buff_thres << '\n'
                << "- retrans_buff_trigger_on = "<< retrans_buff_trigger_on << '\n'
                << "- retrans_buff_cancel "    << retrans_buff_cancel << '\n'
                << "- duc_buff_low = " << duc_buff_low << '\n'
                << "- alpha = " << alpha << '\n'
                << "- condition_thres = " << condition_thres << '\n'
                << "- division_retrans_seg_margin = " << division_retrans_seg_margin << '\n'
                << "- division_retrans_buff_margin = " << division_retrans_buff_margin << '\n'
                << "-------------------------------------------------------------------\n"
                << "- SARA_I = " << I << '\n'
                << "- SARA_B_a = " << B_a << '\n'
                << "- SARA_B_b = " << B_b << '\n' 
                << "- SARA_B_m = " << B_m << "\n\n"
                << "- SQUAD squad_buff_high = " << squad_buff_high << '\n'
                << "- SQUAD squad_buff_low = " << squad_buff_low << '\n'
                << "-------------------------------------------------------------------\n"
                << "# requests: "      << num_of_request << '\n'
                << "Avg RET-bitrate: " << avg_ret_bitrate<< '\n'
                << "Avg RET-idx: "     << avg_ret_idx    << '\n'
                << "Avg NEW-bitrate: " << avg_new_bitrate<< '\n'
                << "Avg old-idx: "     << avg_old_idx    << '\n'
                << "Lowest buff: "     << lowest_buff    << '\n'
                << "# switches: "      << num_switch     << '\n'
                << "# switches_noRET: "<< num_switch_no_retrans << '\n'
                << "# termination: "   << retrans_num_termination << '\n'
                << "# successfully downloaded segments: " << retrans_buffer_recorder.size() << '\n'
                << "Amount waste data (KByte): " << (double) amount_waste_data/1000 << '\n' // should include terminated segment.
                << "# rebuff: "        << rebuf_num << '\n'
                << "rebuff duration (ms): " << minh_rebuff_duration << '\n'
                << "startup phase (ms): " << start_play_time << '\n'
                << "Yin QoE score: " << QoE_yin_score << '\n'
                << "ITU QoE score: " << QoE_itu_score << '\n'

                << "-------------------------------------------------------------------"
                << " Num of seg for each NEW-seg request\n"
                << endl;
    for (int a = 0; a < minh_next_num_recorder.size(); a++){
      parameters << minh_next_num_recorder.at(a) << endl;
    }  

    parameters << "-----------------------"
               << " Num of seg for each RETRANS-seg request"
               << endl;
    for (int a = 0; a < minh_retrans_num_recorder.size(); a++){
      parameters << minh_retrans_num_recorder.at(a) << endl;
    } 

    parameters << "-----------------------"
               << " Retrans buffer recorder"
               << endl;
    for (int a = 0; a < retrans_buffer_recorder.size(); a++){
      parameters << retrans_buffer_recorder.at(a) << endl;
    }        

    parameters << "-----------------------"
               << " Stall timestamp"
               << endl;
    if (minh_stall_start_time.size() > 0)             
      for (int a = 0; a < minh_stall_start_time.size(); a++){
        parameters << minh_stall_start_time.at(a) << endl;
      } 

    parameters << "-----------------------"
               << " Stall duration"
               << endl;
    if (minh_rebuff_duration_recorder.size() > 1)             
      for (int a = 1; a < minh_rebuff_duration_recorder.size(); a++){
        parameters << minh_rebuff_duration_recorder.at(a) << endl;
      }  
    
    parameters.close();
   
    std::cout   << "[CONFIG] Segment duration: " << hung_sd << "\n"
                << "[CONFIG] Num of segments: " << m_max_seg_idx << "\n" 
                << "[CONFIG] Retrans_extension {False, True}: " << minh_retrans_extension  << "\n"
                << "[CONFIG] minh_optimize_bitrate {False, True}: " << minh_optimize_bitrate << "\n"
                << "[CONFIG] Retransmission_method {PROPOSAL, SQUAD}: " << RETRANS_METHOD_STRING[minh_retransmission_method]  << "\n"
                << "[CONFIG] ABR {AGG, SARA, BBA}: " << ABR_STRING[minh_ABR]  << "\n"
                << "[CONFIG] Network Type {TRACE_3G, TRACE_4G, TRACE_5G}: " << TRACE_STRING[minh_trace_mode]  << "\n"
                << "[CONFIG] minh_packet_loss = " << minh_packet_loss  << "%\n\n"
                << "[QoE] ITU score = " << QoE_itu_score << "\n"
                << "[QoE] Yin score = " << QoE_yin_score << std::endl;


    std::cout << "New result folder was created: " << result_direction  << std::endl;
  }  
  else {
    std::cout << ":((( This streaming session is not successful. Num of downloaded segments is " 
              << m_max_seg_idx << "(<" << hung_MAX_SEGMENTS << ")\n";
  }

  std::cout << "============================= THE END =====================" << '\n';              
          
}
} // namespace

namespace {
int client_select_next_proto_cb(SSL *ssl, unsigned char **out,
                                unsigned char *outlen, const unsigned char *in,
                                unsigned int inlen, void *arg) {
  if (config.verbose) {
    print_timer();
    std::cout << "[NPN] server offers:" << std::endl;
  }
  for (unsigned int i = 0; i < inlen; i += in[i] + 1) {
    if (config.verbose) {
      std::cout << "          * ";
      std::cout.write(reinterpret_cast<const char *>(&in[i + 1]), in[i]);
      std::cout << std::endl;
    }
  }
  if (!util::select_h2(const_cast<const unsigned char **>(out), outlen, in,
                       inlen)) {
    print_protocol_nego_error();
    return SSL_TLSEXT_ERR_NOACK;
  }
  return SSL_TLSEXT_ERR_OK;
}
} // namespace

namespace {
// Recommended general purpose "Intermediate compatibility" cipher by
// mozilla.
//
// https://wiki.mozilla.org/Security/Server_Side_TLS
const char *const CIPHER_LIST =
    "ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-"
    "AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384:DHE-RSA-AES128-GCM-SHA256:"
    "DHE-DSS-AES128-GCM-SHA256:kEDH+AESGCM:ECDHE-RSA-AES128-SHA256:ECDHE-ECDSA-"
    "AES128-SHA256:ECDHE-RSA-AES128-SHA:ECDHE-ECDSA-AES128-SHA:ECDHE-RSA-"
    "AES256-SHA384:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA:ECDHE-ECDSA-"
    "AES256-SHA:DHE-RSA-AES128-SHA256:DHE-RSA-AES128-SHA:DHE-DSS-AES128-SHA256:"
    "DHE-RSA-AES256-SHA256:DHE-DSS-AES256-SHA:DHE-RSA-AES256-SHA:AES128-GCM-"
    "SHA256:AES256-GCM-SHA384:AES128-SHA256:AES256-SHA256:AES128-SHA:AES256-"
    "SHA:AES:CAMELLIA:DES-CBC3-SHA:!aNULL:!eNULL:!EXPORT:!DES:!RC4:!MD5:!PSK:!"
    "aECDH:!EDH-DSS-DES-CBC3-SHA:!EDH-RSA-DES-CBC3-SHA:!KRB5-DES-CBC3-SHA";
} // namespace

namespace {
int communicate(
    const std::string &scheme, const std::string &host, uint16_t port,
    std::vector<
        std::tuple<std::string, nghttp2_data_provider *, int64_t, int32_t>>
        requests,
    const nghttp2_session_callbacks *callbacks) {
  int result = 0;
  auto loop = EV_DEFAULT;
  SSL_CTX *ssl_ctx = nullptr;
  if (scheme == "https") {
    ssl_ctx = SSL_CTX_new(SSLv23_client_method());
    if (!ssl_ctx) {
      std::cerr << "[ERROR] Failed to create SSL_CTX: "
                << ERR_error_string(ERR_get_error(), nullptr) << std::endl;
      result = -1;
      goto fin;
    }

    auto ssl_opts = (SSL_OP_ALL & ~SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS) |
                    SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3 | SSL_OP_NO_COMPRESSION |
                    SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION;

    SSL_CTX_set_options(ssl_ctx, ssl_opts);
    SSL_CTX_set_mode(ssl_ctx, SSL_MODE_AUTO_RETRY);
    SSL_CTX_set_mode(ssl_ctx, SSL_MODE_RELEASE_BUFFERS);
    if (SSL_CTX_set_cipher_list(ssl_ctx, CIPHER_LIST) == 0) {
      std::cerr << "[ERROR] " << ERR_error_string(ERR_get_error(), nullptr)
                << std::endl;
      result = -1;
      goto fin;
    }
    if (!config.keyfile.empty()) {
      if (SSL_CTX_use_PrivateKey_file(ssl_ctx, config.keyfile.c_str(),
                                      SSL_FILETYPE_PEM) != 1) {
        std::cerr << "[ERROR] " << ERR_error_string(ERR_get_error(), nullptr)
                  << std::endl;
        result = -1;
        goto fin;
      }
    }
    if (!config.certfile.empty()) {
      if (SSL_CTX_use_certificate_chain_file(ssl_ctx,
                                             config.certfile.c_str()) != 1) {
        std::cerr << "[ERROR] " << ERR_error_string(ERR_get_error(), nullptr)
                  << std::endl;
        result = -1;
        goto fin;
      }
    }
    SSL_CTX_set_next_proto_select_cb(ssl_ctx, client_select_next_proto_cb,
                                     nullptr);

#if OPENSSL_VERSION_NUMBER >= 0x10002000L
    auto proto_list = util::get_default_alpn();

    SSL_CTX_set_alpn_protos(ssl_ctx, proto_list.data(), proto_list.size());
#endif // OPENSSL_VERSION_NUMBER >= 0x10002000L
  }
  {
    HttpClient client{callbacks, loop, ssl_ctx};

    int32_t dep_stream_id = 0;

    if (!config.no_dep) {
      dep_stream_id = anchors[ANCHOR_FOLLOWERS].stream_id;
    }

    for (auto &req : requests) {
      nghttp2_priority_spec pri_spec;

      nghttp2_priority_spec_init(&pri_spec, dep_stream_id, std::get<3>(req), 0);

      for (int i = 0; i < config.multiply; ++i) {
        //client.add_request(std::get<0>(req), std::get<1>(req), std::get<2>(req),
        //                   pri_spec);

        // Hung_comment: These parameters are too complicated thus saving them is the best solution
        dang_data_prd = std::get<1>(req);
        dang_data_length = std::get<2>(req);
        dang_pri_spec = pri_spec;  
        // std::cout << "11111111111111111111111111111111111" << std::endl; 
        // client.add_request(std::get<0>(req), std::get<1>(req), std::get<2>(req),
        //                pri_spec);        
        minh_get_rate_set(hung_sd);
        minh_get_ABR_parameters(minh_ABR);
        // if (minh_network_ack == YES){
        //   minh_get_origin_thrp();
        // }
        minh_stall_start_time.push_back(0);
        minh_rebuff_start = 0;
        hung_req_vod_rebuff(&client, false);
        break;
      }
    }
    client.update_hostport();

    client.record_start_time();

    if (client.resolve_host(host, port) != 0) {
      goto fin;
    }

    client.record_domain_lookup_end_time();

    if (client.initiate_connection() != 0) {
      std::cerr << "[ERROR] Could not connect to " << host << ", port " << port
                << std::endl;
      goto fin;
    }

    ev_set_userdata(loop, &client);
    ev_run(loop, 0);
    ev_set_userdata(loop, nullptr);

#ifdef HAVE_JANSSON
    if (!config.harfile.empty()) {
      FILE *outfile;
      if (config.harfile == "-") {
        outfile = stdout;
      } else {
        outfile = fopen(config.harfile.c_str(), "wb");
      }

      if (outfile) {
        client.output_har(outfile);

        if (outfile != stdout) {
          fclose(outfile);
        }
      } else {
        std::cerr << "Cannot open file " << config.harfile << ". "
                  << "har file could not be created." << std::endl;
      }
    }
#endif // HAVE_JANSSON

    if (client.success != client.reqvec.size()) {
      std::cerr << "Some requests were not processed. total="
                << client.reqvec.size() << ", processed=" << client.success
                << std::endl;
    }
    if (config.stat) {
      print_stats(client);
    }
  }
fin:
  if (ssl_ctx) {
    SSL_CTX_free(ssl_ctx);
  }
  return result;
}
} // namespace

namespace {
ssize_t file_read_callback(nghttp2_session *session, int32_t stream_id,
                           uint8_t *buf, size_t length, uint32_t *data_flags,
                           nghttp2_data_source *source, void *user_data) {
  int rv;
  auto req = static_cast<Request *>(
      nghttp2_session_get_stream_user_data(session, stream_id));
  assert(req);
  int fd = source->fd;
  ssize_t nread;

  while ((nread = pread(fd, buf, length, req->data_offset)) == -1 &&
         errno == EINTR)
    ;

  if (nread == -1) {
    return NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE;
  }

  req->data_offset += nread;

  if (req->data_offset == req->data_length) {
    *data_flags |= NGHTTP2_DATA_FLAG_EOF;
    if (!config.trailer.empty()) {
      std::vector<nghttp2_nv> nva;
      nva.reserve(config.trailer.size());
      for (auto &kv : config.trailer) {
        nva.push_back(http2::make_nv(kv.name, kv.value, kv.no_index));
      }
      rv = nghttp2_submit_trailer(session, stream_id, nva.data(), nva.size());
      if (rv != 0) {
        if (nghttp2_is_fatal(rv)) {
          return NGHTTP2_ERR_CALLBACK_FAILURE;
        }
      } else {
        *data_flags |= NGHTTP2_DATA_FLAG_NO_END_STREAM;
      }
    }

    return nread;
  }

  if (req->data_offset > req->data_length || nread == 0) {
    return NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE;
  }

  return nread;
}
} // namespace

namespace {
int run(char **uris, int n) {
  nghttp2_session_callbacks *callbacks;

  nghttp2_session_callbacks_new(&callbacks);
  auto cbsdel = defer(nghttp2_session_callbacks_del, callbacks);

  nghttp2_session_callbacks_set_on_stream_close_callback(
      callbacks, on_stream_close_callback);

  nghttp2_session_callbacks_set_on_frame_recv_callback(callbacks,
                                                       on_frame_recv_callback2);

  if (config.verbose) {
    nghttp2_session_callbacks_set_on_invalid_frame_recv_callback(
        callbacks, verbose_on_invalid_frame_recv_callback);

    nghttp2_session_callbacks_set_error_callback(callbacks,
                                                 verbose_error_callback);
  }

  nghttp2_session_callbacks_set_on_data_chunk_recv_callback(
      callbacks, on_data_chunk_recv_callback);

  nghttp2_session_callbacks_set_on_begin_headers_callback(
      callbacks, on_begin_headers_callback);

  nghttp2_session_callbacks_set_on_header_callback(callbacks,
                                                   on_header_callback);

  nghttp2_session_callbacks_set_before_frame_send_callback(
      callbacks, before_frame_send_callback);

  nghttp2_session_callbacks_set_on_frame_send_callback(callbacks,
                                                       on_frame_send_callback);

  nghttp2_session_callbacks_set_on_frame_not_send_callback(
      callbacks, on_frame_not_send_callback);

  if (config.padding) {
    nghttp2_session_callbacks_set_select_padding_callback(
        callbacks, select_padding_callback);
  }

  std::string prev_scheme;
  std::string prev_host;
  uint16_t prev_port = 0;
  int failures = 0;
  int data_fd = -1;
  nghttp2_data_provider data_prd;
  struct stat data_stat;

  if (!config.datafile.empty()) {
    if (config.datafile == "-") {
      if (fstat(0, &data_stat) == 0 &&
          (data_stat.st_mode & S_IFMT) == S_IFREG) {
        // use STDIN if it is a regular file
        data_fd = 0;
      } else {
        // copy the contents of STDIN to a temporary file
        char tempfn[] = "/tmp/nghttp.temp.XXXXXX";
        data_fd = mkstemp(tempfn);
        if (data_fd == -1) {
          std::cerr << "[ERROR] Could not create a temporary file in /tmp"
                    << std::endl;
          return 1;
        }
        if (unlink(tempfn) != 0) {
          std::cerr << "[WARNING] failed to unlink temporary file:" << tempfn
                    << std::endl;
        }
        while (1) {
          std::array<char, 1_k> buf;
          ssize_t rret, wret;
          while ((rret = read(0, buf.data(), buf.size())) == -1 &&
                 errno == EINTR)
            ;
          if (rret == 0)
            break;
          if (rret == -1) {
            std::cerr << "[ERROR] I/O error while reading from STDIN"
                      << std::endl;
            return 1;
          }
          while ((wret = write(data_fd, buf.data(), rret)) == -1 &&
                 errno == EINTR)
            ;
          if (wret != rret) {
            std::cerr << "[ERROR] I/O error while writing to temporary file"
                      << std::endl;
            return 1;
          }
        }
        if (fstat(data_fd, &data_stat) == -1) {
          close(data_fd);
          std::cerr << "[ERROR] Could not stat temporary file" << std::endl;
          return 1;
        }
      }
    } else {
      data_fd = open(config.datafile.c_str(), O_RDONLY | O_BINARY);
      if (data_fd == -1) {
        std::cerr << "[ERROR] Could not open file " << config.datafile
                  << std::endl;
        return 1;
      }
      if (fstat(data_fd, &data_stat) == -1) {
        close(data_fd);
        std::cerr << "[ERROR] Could not stat file " << config.datafile
                  << std::endl;
        return 1;
      }
    }
    data_prd.source.fd = data_fd;
    data_prd.read_callback = file_read_callback;
  }
  std::vector<
      std::tuple<std::string, nghttp2_data_provider *, int64_t, int32_t>>
      requests;

  size_t next_weight_idx = 0;

  for (int i = 0; i < n; ++i) {
    http_parser_url u{};
    auto uri = strip_fragment(uris[i]);
    if (http_parser_parse_url(uri.c_str(), uri.size(), 0, &u) != 0) {
      ++next_weight_idx;
      std::cerr << "[ERROR] Could not parse URI " << uri << std::endl;
      continue;
    }
    if (!util::has_uri_field(u, UF_SCHEMA)) {
      ++next_weight_idx;
      std::cerr << "[ERROR] URI " << uri << " does not have scheme part"
                << std::endl;
      continue;
    }
    auto port = util::has_uri_field(u, UF_PORT)
                    ? u.port
                    : util::get_default_port(uri.c_str(), u);
    auto host = decode_host(util::get_uri_field(uri.c_str(), u, UF_HOST));

    // Hung: get defaul URI, and starting bitrate
    auto hung_scheme = util::get_uri_field(uri.c_str(), u, UF_SCHEMA).str();
    hung_uri = hung_scheme + "://" + host + ":" + std::to_string(port);

    if (!util::fieldeq(uri.c_str(), u, UF_SCHEMA, prev_scheme.c_str()) ||
        host != prev_host || port != prev_port) {
      if (!requests.empty()) {
        if (communicate(prev_scheme, prev_host, prev_port, std::move(requests),
                        callbacks) != 0) {
          ++failures;
        }
        requests.clear();
      }
      prev_scheme = util::get_uri_field(uri.c_str(), u, UF_SCHEMA).str();
      prev_host = std::move(host);
      prev_port = port;
    }
    requests.emplace_back(uri, data_fd == -1 ? nullptr : &data_prd,
                          data_stat.st_size, config.weight[next_weight_idx++]);

  // Hung:
  for (int i = 0; i < hung_time_recorder.size(); i++) {
    std::cout << hung_seg_recorder.at(i) << "\t"
              << hung_time_recorder.at(i)/1000.0 << "\t"
              << hung_thrp_recorder.at(i) << "\t"
              << hung_rate_recorder.at(i) << "\t"
              << hung_buff_recorder.at(i)/1000.0 << "\t" 
              << std::endl;
  }

  }
  if (!requests.empty()) {
    if (communicate(prev_scheme, prev_host, prev_port, std::move(requests),
                    callbacks) != 0) {
      ++failures;
    }
  }
  return failures;
}
} // namespace

namespace {
void print_version(std::ostream &out) {
  out << "nghttp nghttp2/" NGHTTP2_VERSION << std::endl;
}
} // namespace

namespace {
void print_usage(std::ostream &out) {
  out << R"(Usage: nghttp [OPTIONS]... <URI>...
HTTP/2 client)"
      << std::endl;
}
} // namespace

namespace {
void print_help(std::ostream &out) {
  print_usage(out);
  out << R"(
  <URI>       Specify URI to access.
Options:
  -v, --verbose
              Print   debug   information   such  as   reception   and
              transmission of frames and name/value pairs.  Specifying
              this option multiple times increases verbosity.
  -n, --null-out
              Discard downloaded data.
  -O, --remote-name
              Save  download  data  in  the  current  directory.   The
              filename is  derived from  URI.  If  URI ends  with '/',
              'index.html'  is used  as a  filename.  Not  implemented
              yet.
  -t, --timeout=<DURATION>
              Timeout each request after <DURATION>.  Set 0 to disable
              timeout.
  -w, --window-bits=<N>
              Sets the stream level initial window size to 2**<N>-1.
  -W, --connection-window-bits=<N>
              Sets  the  connection  level   initial  window  size  to
              2**<N>-1.
  -a, --get-assets
              Download assets  such as stylesheets, images  and script
              files linked  from the downloaded resource.   Only links
              whose  origins are  the same  with the  linking resource
              will be downloaded.   nghttp prioritizes resources using
              HTTP/2 dependency  based priority.  The  priority order,
              from highest to lowest,  is html itself, css, javascript
              and images.
  -s, --stat  Print statistics.
  -H, --header=<HEADER>
              Add a header to the requests.  Example: -H':method: PUT'
  --trailer=<HEADER>
              Add a trailer header to the requests.  <HEADER> must not
              include pseudo header field  (header field name starting
              with ':').  To  send trailer, one must use  -d option to
              send request body.  Example: --trailer 'foo: bar'.
  --cert=<CERT>
              Use  the specified  client certificate  file.  The  file
              must be in PEM format.
  --key=<KEY> Use the  client private key  file.  The file must  be in
              PEM format.
  -d, --data=<PATH>
              Post FILE to server. If '-'  is given, data will be read
              from stdin.
  -m, --multiply=<N>
              Request each URI <N> times.  By default, same URI is not
              requested twice.  This option disables it too.
  -u, --upgrade
              Perform HTTP Upgrade for HTTP/2.  This option is ignored
              if the request URI has https scheme.  If -d is used, the
              HTTP upgrade request is performed with OPTIONS method.
  -p, --weight=<WEIGHT>
              Sets  weight of  given  URI.  This  option  can be  used
              multiple times, and  N-th -p option sets  weight of N-th
              URI in the command line.  If  the number of -p option is
              less than the number of URI, the last -p option value is
              repeated.  If there is no -p option, default weight, 16,
              is assumed.  The valid value range is
              [)"
      << NGHTTP2_MIN_WEIGHT << ", " << NGHTTP2_MAX_WEIGHT << R"(], inclusive.
  -M, --peer-max-concurrent-streams=<N>
              Use  <N>  as  SETTINGS_MAX_CONCURRENT_STREAMS  value  of
              remote endpoint as if it  is received in SETTINGS frame.
              Default: 100
  -c, --header-table-size=<SIZE>
              Specify decoder  header table  size.  If this  option is
              used  multiple times,  and the  minimum value  among the
              given values except  for last one is  strictly less than
              the last  value, that minimum  value is set  in SETTINGS
              frame  payload  before  the   last  value,  to  simulate
              multiple header table size change.
  --encoder-header-table-size=<SIZE>
              Specify encoder header table size.  The decoder (server)
              specifies  the maximum  dynamic table  size it  accepts.
              Then the negotiated dynamic table size is the minimum of
              this option value and the value which server specified.
  -b, --padding=<N>
              Add at  most <N>  bytes to a  frame payload  as padding.
              Specify 0 to disable padding.
  -r, --har=<PATH>
              Output HTTP  transactions <PATH> in HAR  format.  If '-'
              is given, data is written to stdout.

  // [20.06.25] * Add more option in command lines * ADD-S
  -R, --retrans-method=<M>
              Determine which retransmission method is used. Default:
              H2BR.
  -A, --abr=<M>
              Determine which ABR is used. Default: AGG
  --enable-retrans
              To enable retransmission extention. Default: false.
  -N, --network-mode=<N>
              Determine the type of network to run experiments.
              Default: TRACE_4G
  -S, --segment-duration=<N>
              Determine the segment duration used: 1000ms, 2000ms,...
  -o, --optimize-bitrate
              Allow a segment to be retransmitted multiple times to 
              optimize average video quality
  -P, --packet-loss=<N>
              Determine the packet loss of the network trace.
  // [20.06.25] * Add more option in command lines * ADD-E    

  --color     Force colored log output.
  --continuation
              Send large header to test CONTINUATION.
  --no-content-length
              Don't send content-length header field.
  --no-dep    Don't send dependency based priority hint to server.
  --hexdump   Display the  incoming traffic in  hexadecimal (Canonical
              hex+ASCII display).  If SSL/TLS  is used, decrypted data
              are used.
  --no-push   Disable server push.
  --max-concurrent-streams=<N>
              The  number of  concurrent  pushed  streams this  client
              accepts.
  --expect-continue
              Perform an Expect/Continue handshake:  wait to send DATA
              (up to  a short  timeout)  until the server sends  a 100
              Continue interim response. This option is ignored unless
              combined with the -d option.
  --version   Display version information and exit.
  -h, --help  Display this help and exit.

--

  The <SIZE> argument is an integer and an optional unit (e.g., 10K is
  10 * 1024).  Units are K, M and G (powers of 1024).

  The <DURATION> argument is an integer and an optional unit (e.g., 1s
  is 1 second and 500ms is 500 milliseconds).  Units are h, m, s or ms
  (hours, minutes, seconds and milliseconds, respectively).  If a unit
  is omitted, a second is used as unit.)"
      << std::endl;
}
} // namespace

int main(int argc, char **argv) {
  ssl::libssl_init();

  bool color = false;
  while (1) {
    static int flag = 0;
    static option long_options[] = {
        {"verbose", no_argument, nullptr, 'v'},
        {"null-out", no_argument, nullptr, 'n'},
        {"remote-name", no_argument, nullptr, 'O'},
        {"timeout", required_argument, nullptr, 't'},
        {"window-bits", required_argument, nullptr, 'w'},
        {"connection-window-bits", required_argument, nullptr, 'W'},
        {"get-assets", no_argument, nullptr, 'a'},
        {"stat", no_argument, nullptr, 's'},
        {"help", no_argument, nullptr, 'h'},
        {"header", required_argument, nullptr, 'H'},
        {"data", required_argument, nullptr, 'd'},
        {"multiply", required_argument, nullptr, 'm'},
        {"upgrade", no_argument, nullptr, 'u'},
        {"weight", required_argument, nullptr, 'p'},
        {"peer-max-concurrent-streams", required_argument, nullptr, 'M'},
        {"header-table-size", required_argument, nullptr, 'c'},
        {"padding", required_argument, nullptr, 'b'},
        {"har", required_argument, nullptr, 'r'},
        // [20.06.25] * Add more option in command lines * ADD-S
        {"retrans-method", required_argument, nullptr, 'R'},
        {"abr", required_argument, nullptr, 'A'},
        {"network-mode", required_argument, nullptr, 'N'},
        {"packet-loss", required_argument, nullptr, 'P'},
        {"segment-duration", required_argument, nullptr, 'S'},
        {"optimize-bitrate", required_argument, nullptr, 'o'},
        // [20.06.25] * Add more option in command lines * ADD-E
        {"cert", required_argument, &flag, 1},
        {"key", required_argument, &flag, 2},
        {"color", no_argument, &flag, 3},
        {"continuation", no_argument, &flag, 4},
        {"version", no_argument, &flag, 5},
        {"no-content-length", no_argument, &flag, 6},
        {"no-dep", no_argument, &flag, 7},
        {"trailer", required_argument, &flag, 9},
        {"hexdump", no_argument, &flag, 10},
        {"no-push", no_argument, &flag, 11},
        {"max-concurrent-streams", required_argument, &flag, 12},
        {"expect-continue", no_argument, &flag, 13},
        {"encoder-header-table-size", required_argument, &flag, 14},
        // // [20.06.25] * Add more option in command lines * ADD-S
        // {"enable-retrans", no_argument, &flag, 15},
        // // [20.06.25] * Add more option in command lines * ADD-E
        {nullptr, 0, nullptr, 0}};
    int option_index = 0;
    int c = getopt_long(argc, argv, "M:Oab:c:d:gm:np:r:hH:vst:uw:W:",
                        long_options, &option_index);
    if (c == -1) {
      break;
    }
    switch (c) {
    case 'M':
      // peer-max-concurrent-streams option
      config.peer_max_concurrent_streams = strtoul(optarg, nullptr, 10);
      break;
    case 'O':
      config.remote_name = true;
      break;
    case 'h':
      print_help(std::cout);
      exit(EXIT_SUCCESS);
    case 'b':
      config.padding = strtol(optarg, nullptr, 10);
      break;
    case 'n':
      config.null_out = true;
      break;
    case 'p': {
      errno = 0;
      auto n = strtoul(optarg, nullptr, 10);
      if (errno == 0 && NGHTTP2_MIN_WEIGHT <= n && n <= NGHTTP2_MAX_WEIGHT) {
        config.weight.push_back(n);
      } else {
        std::cerr << "-p: specify the integer in the range ["
                  << NGHTTP2_MIN_WEIGHT << ", " << NGHTTP2_MAX_WEIGHT
                  << "], inclusive" << std::endl;
        exit(EXIT_FAILURE);
      }
      break;
    }
    case 'r':
#ifdef HAVE_JANSSON
      config.harfile = optarg;
#else  // !HAVE_JANSSON
      std::cerr << "[WARNING]: -r, --har option is ignored because\n"
                << "the binary was not compiled with libjansson." << std::endl;
#endif // !HAVE_JANSSON
      break;
    case 'v':
      ++config.verbose;
      break;
    case 't':
      config.timeout = util::parse_duration_with_unit(optarg);
      if (config.timeout == std::numeric_limits<double>::infinity()) {
        std::cerr << "-t: bad timeout value: " << optarg << std::endl;
        exit(EXIT_FAILURE);
      }
      break;
    case 'u':
      config.upgrade = true;
      break;
    case 'w':
    case 'W': {
      errno = 0;
      char *endptr = nullptr;
      unsigned long int n = strtoul(optarg, &endptr, 10);
      if (errno == 0 && *endptr == '\0' && n < 31) {
        if (c == 'w') {
          config.window_bits = n;
        } else {
          config.connection_window_bits = n;
        }
      } else {
        std::cerr << "-" << static_cast<char>(c)
                  << ": specify the integer in the range [0, 30], inclusive"
                  << std::endl;
        exit(EXIT_FAILURE);
      }
      break;
    }
    case 'H': {
      char *header = optarg;
      // Skip first possible ':' in the header name
      char *value = strchr(optarg + 1, ':');
      if (!value || (header[0] == ':' && header + 1 == value)) {
        std::cerr << "-H: invalid header: " << optarg << std::endl;
        exit(EXIT_FAILURE);
      }
      *value = 0;
      value++;
      while (isspace(*value)) {
        value++;
      }
      if (*value == 0) {
        // This could also be a valid case for suppressing a header
        // similar to curl
        std::cerr << "-H: invalid header - value missing: " << optarg
                  << std::endl;
        exit(EXIT_FAILURE);
      }
      config.headers.emplace_back(header, value, false);
      util::inp_strlower(config.headers.back().name);
      break;
    }
    case 'a':
#ifdef HAVE_LIBXML2
      config.get_assets = true;
#else  // !HAVE_LIBXML2
      std::cerr << "[WARNING]: -a, --get-assets option is ignored because\n"
                << "the binary was not compiled with libxml2." << std::endl;
#endif // !HAVE_LIBXML2
      break;
    case 's':
      config.stat = true;
      break;
    case 'd':
      config.datafile = optarg;
      break;
    case 'm':
      config.multiply = strtoul(optarg, nullptr, 10);
      break;
    case 'c': {
      auto n = util::parse_uint_with_unit(optarg);
      if (n == -1) {
        std::cerr << "-c: Bad option value: " << optarg << std::endl;
        exit(EXIT_FAILURE);
      }
      if (n > std::numeric_limits<uint32_t>::max()) {
        std::cerr << "-c: Value too large.  It should be less than or equal to "
                  << std::numeric_limits<uint32_t>::max() << std::endl;
        exit(EXIT_FAILURE);
      }
      config.header_table_size = n;
      config.min_header_table_size = std::min(config.min_header_table_size, n);
      break;
    }
    // [20.06.25] * Add more option in command lines * ADD-S
    case 'R':
    {
      if (strcmp(optarg, "NONE") == 0)
      {
        minh_retrans_extension = false;
        minh_retransmission_method = NONE;
      }
      else if (strcmp(optarg, "PROPOSAL") == 0)
      {
        minh_retrans_extension = true;
        minh_retransmission_method = PROPOSAL;
      }
      else if (strcmp(optarg, "SQUAD") == 0)
      {
        minh_retrans_extension = true;
        minh_retransmission_method = SQUAD;
      }
      else
      {
        std::cerr << "[ERROR] This [" << optarg << "] retransmisison method is NOT supported. Methods supported are: \n";
        for (int i = 0; i < sizeof(RETRANS_METHOD_STRING); i++){
          std::cerr << RETRANS_METHOD_STRING[i] << '\n';
        }
        exit(EXIT_FAILURE);
      }
      break;
    }
    case 'A':
    {
      if (strcmp(optarg, "AGG") == 0)
      {
        minh_ABR = AGG;
      }
      else if (strcmp(optarg, "SARA") == 0)
      {
        minh_ABR = SARA;
      }
      else if (strcmp(optarg, "BBA") == 0)
      {
        minh_ABR = BBA;
      }
      else {
        std::cerr << "[ERROR] This ABR [" << optarg <<"] is NOT supported. ABRs supported are: \n";
        for (int i = 0; i < sizeof(ABR_STRING); i++){
          std::cerr << ABR_STRING[i] << '\n';
        }
        exit(EXIT_FAILURE);        
      }
      break;
    }
    case 'N':
    {
      if (strcmp(optarg, "3G") == 0){
        minh_trace_mode = TRACE_3G;
      }
      else if (strcmp(optarg, "4G") == 0){
        minh_trace_mode = TRACE_4G;
      }
      else if (strcmp(optarg, "5G") == 0){
        minh_trace_mode = TRACE_5G;
      }
      else {
        std::cerr << "This Network trace [" << optarg <<"] is NOT supported. Network traces supported are: \n";
        for (int i = 0; i < sizeof(TRACE_STRING); i++){
          std::cerr << TRACE_STRING[i] << '\n';
        }
        exit(EXIT_FAILURE);        
      }
      break;
    }
    case 'P':
    {
      minh_packet_loss = std::stoi(optarg);
      break;
    }
    case 'S':
    {
      hung_sd = std::stoi(optarg);
      hung_MAX_SEGMENTS = 300000/hung_sd;
      break;
    }
    case 'o':
    {
      if (std::stoi(optarg) > 0)
        minh_optimize_bitrate = true;
      else
        minh_optimize_bitrate = false;
      break;
    }
    // [20.06.25] * Add more option in command lines * ADD-E
    case '?':
      util::show_candidates(argv[optind - 1], long_options);
      exit(EXIT_FAILURE);
    case 0:
      switch (flag) {
        case 1:
          // cert option
          config.certfile = optarg;
          break;
        case 2:
          // key option
          config.keyfile = optarg;
          break;
        case 3:
          // color option
          color = true;
          break;
        case 4:
          // continuation option
          config.continuation = true;
          break;
        case 5:
          // version option
          print_version(std::cout);
          exit(EXIT_SUCCESS);
        case 6:
          // no-content-length option
          config.no_content_length = true;
          break;
        case 7:
          // no-dep option
          config.no_dep = true;
          break;
        case 9: {
          // trailer option
          auto header = optarg;
          auto value = strchr(optarg, ':');
          if (!value) {
            std::cerr << "--trailer: invalid header: " << optarg << std::endl;
            exit(EXIT_FAILURE);
          }
          *value = 0;
          value++;
          while (isspace(*value)) {
            value++;
          }
          if (*value == 0) {
            // This could also be a valid case for suppressing a header
            // similar to curl
            std::cerr << "--trailer: invalid header - value missing: " << optarg
                      << std::endl;
            exit(EXIT_FAILURE);
          }
          config.trailer.emplace_back(header, value, false);
          util::inp_strlower(config.trailer.back().name);
          break;
        }
        case 10:
          // hexdump option
          config.hexdump = true;
          break;
        case 11:
          // no-push option
          config.no_push = true;
          break;
        case 12:
          // max-concurrent-streams option
          config.max_concurrent_streams = strtoul(optarg, nullptr, 10);
          break;
        case 13:
          // expect-continue option
          config.expect_continue = true;
          break;
        case 14: {
          // encoder-header-table-size option
          auto n = util::parse_uint_with_unit(optarg);
          if (n == -1) {
            std::cerr << "--encoder-header-table-size: Bad option value: "
                      << optarg << std::endl;
            exit(EXIT_FAILURE);
          }
          if (n > std::numeric_limits<uint32_t>::max()) {
            std::cerr << "--encoder-header-table-size: Value too large.  It "
                         "should be less than or equal to "
                      << std::numeric_limits<uint32_t>::max() << std::endl;
            exit(EXIT_FAILURE);
          }
          config.encoder_header_table_size = n;
          break;
        }
        // // [20.06.25] * Add more option in command lines * ADD-S
        // case 15:
        // {
        //   minh_retrans_extension = true;
        //   break;
        // }
        // // [20.06.25] * Add more option in command lines * ADD-E
      }
      break;
    default:
      break;
    }
  }

  // SARA ABR -S
  I = 2*hung_sd; // act as the buffer enough to start playing
  B_a = 10*hung_sd;
  B_b = 15*hung_sd;
  B_m = 17*hung_sd;
  // SARA ABR -E

  // BBA ABR -S
  BBA_r = 5*hung_sd;
  BBA_cu = 15*hung_sd;
  BBA_Max = 22*hung_sd;
  // BBA ABR -E

  // [20.06.25] * Add more option in command lines * ADD-S
  std::cout << "[CONFIG] Segment duration: " << hung_sd << "\n"
            << "[CONFIG] Num of segments: " << hung_MAX_SEGMENTS << "\n" 
            << "[CONFIG] Retrans_extension {False, True}: " << minh_retrans_extension  << "\n"
            << "[CONFIG] Retransmission_method {PROPOSAL, SQUAD}: " << RETRANS_METHOD_STRING[minh_retransmission_method]  << "\n"
            << "[CONFIG] minh_optimize_bitrate {False, True}: " << minh_optimize_bitrate << "\n"
            << "[CONFIG] ABR {AGG, SARA, BBA}: " << ABR_STRING[minh_ABR]  << "\n"
            << "[CONFIG] Network Type {TRACE_3G, TRACE_4G, TRACE_5G}: " << TRACE_STRING[minh_trace_mode]  << "\n"
            << "[CONFIG] minh_packet_loss = " << minh_packet_loss  << "%\n"
            << std::endl;

  const string dummynet_file = "complex_" + TRACE_STRING[minh_trace_mode] + "_"
                                + "PL_" + std::to_string(minh_packet_loss) + ".sh";
  std::cout << "Dummynet file: " << dummynet_file << std::endl;                                               
  const string dummynet_kill = "sudo killall bash ./" + dummynet_file;
  std::cout << "\n\t[MINH] INFO: run dummynet: " << dummynet_kill << std::endl;
  if (system(dummynet_kill.c_str())) {std::cout << "Could not Kill DummyNet" << std::endl; }


  const string dummynet_run = "sudo ./complex_" + TRACE_STRING[minh_trace_mode] + "_"
                                                + "PL_" + std::to_string(minh_packet_loss) + ".sh &";
  std::cout << "\n\t[MINH] INFO: run dummynet: " << dummynet_run << std::endl;
  if (system(dummynet_run.c_str())) {std::cout << "could not run DummyNet" << std::endl; }              
  // [20.06.25] * Add more option in command lines * ADD-E

  int32_t weight_to_fill;
  if (config.weight.empty()) {
    weight_to_fill = NGHTTP2_DEFAULT_WEIGHT;
  } else {
    weight_to_fill = config.weight.back();
  }
  config.weight.insert(std::end(config.weight), argc - optind, weight_to_fill);

  set_color_output(color || isatty(fileno(stdout)));

  nghttp2_option_set_peer_max_concurrent_streams(
      config.http2_option, config.peer_max_concurrent_streams);

  if (config.encoder_header_table_size != -1) {
    nghttp2_option_set_max_deflate_dynamic_table_size(
        config.http2_option, config.encoder_header_table_size);
  }

  struct sigaction act {};
  act.sa_handler = SIG_IGN;
  sigaction(SIGPIPE, &act, nullptr);
  reset_timer();
  return run(argv + optind, argc - optind);
}

} // namespace nghttp2

int main(int argc, char **argv) {
  // Hung:
        // const string dummynet_run = "sudo ./complex_" + TRACE_STRING[minh_trace_mode] + "_"
        //                                               + "PL_" + std::to_string(minh_packet_loss) + ".sh &";
        // std::cout << "\n\t[MINH] INFO: run dummynet: " << dummynet_run << std::endl;
        // if (system(dummynet_run.c_str())) {std::cout << "could not run DummyNet" << std::endl; }

  return nghttp2::run_app(nghttp2::main, argc, argv);
}
