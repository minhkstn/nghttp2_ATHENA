######################################
#          HTTP/2 tutorial           #
######################################

1) Cai thu vien (Should use ubuntu 14.04 kernel 3.2.84)
	sudo apt-get install -y make binutils autoconf automake autotools-dev libtool pkg-config zlib1g-dev libcunit1-dev libssl-dev libxml2-dev libev-dev libevent-dev libjansson-dev libc-ares-dev libjemalloc-dev  python-setuptools g++ g++-mingw-w64-i686 git python3-setuptools

/////////////////////////// install python3.7-dev
	sudo apt-get install -y build-essential checkinstall
	sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev 	
	cd /usr/src
	sudo wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
	sudo tar xzf Python-3.7.4.tgz
	cd Python-3.7.4
	sudo ./configure --enable-optimizations
	sudo make altinstall
///////////////////////////////////////////
	
	// libsystemd-dev
	sudo apt-get install -y libsystemd-daemon-dev (for ubuntu 14)
	sudo apt-get install libsystemd-dev (ubuntu 18)

	sudo apt-get install -y libboost-all-dev libboost-dev
	sudo apt-get update && sudo apt-get install  -y python3-pip
	//sudo easy_install3 pip
	
	sudo pip3 install -U cython


2) Cai spdy
	mkdir ~/HTTP2_src
	git clone https://github.com/tatsuhiro-t/spdylay.git ~/HTTP2_src/spdylay
	cd ~/HTTP2_src/spdylay
	autoreconf -i --force
	automake
	autoconf
	./configure
	sudo make
	sudo make install

Tim dia chi spdy
	sudo updatedb
	locate libspdylay.so.7

Voi i386:
	sudo ln -s /usr/local/lib/libspdylay.so.7 /lib/i386-linux-gnu/libspdylay.so.7
	sudo ln -s /usr/local/lib/libspdylay.so.7.2.0 /lib/i386-linux-gnu/libspdylay.so.7.2.0
Voi x86_64
	sudo ln -s /usr/local/lib/libspdylay.so.7 /lib/x86_64-linux-gnu/libspdylay.so.7
	sudo ln -s /usr/local/lib/libspdylay.so.7.2.0 /lib/x86_64-linux-gnu/libspdylay.so.7.2.0

	sudo ldconfig

3) Cai dat NGHTTP2
	git clone https://github.com/tatsuhiro-t/nghttp2.git ~/HTTP2_src/nghttp2
(trong truong hop khong ket noi duoc, Co the do ma nguon da bi updated. Su dung file ma nguon da chinh sua trong Server_conf. Giai nen vao home/HTTP2_src)
	cd ~/HTTP2_src/nghttp2
	autoreconf -i --force
	automake
	autoconf
	./configure PYTHON=/usr/bin/python3 --enable-asio-lib 
	// results: 
		MRuby:          no (CFLAGS='' LIBS='')
      	Neverbleed:     no
    //
	sudo make
	// if there's an error about the version of libtool. Install manually libtool version 2.4.6 and run $ autoreconf -i again to make a file in /m4 folder related to libtool
	sudo make install

	ll /usr/local/lib/  
	////////////////////////////////////////////////////
	libnghttp2.a              libnghttp2.so.5           libnghttp2_asio.la        libnghttp2_asio.so.1.0.0  python3.4/                
	libnghttp2.la             libnghttp2.so.5.7.2       libnghttp2_asio.so   	  pkgconfig/                
	libnghttp2.so             libnghttp2_asio.a         libnghttp2_asio.so.1      python2.7/
	////////////////////////////////////////////////////

	sudo updatedb
	locate libnghttp2.so.14

Voi i386:
	sudo ln -s /usr/local/lib/libnghttp2.so.14 /lib/i386-linux-gnu/libnghttp2.so.14
	sudo ln -s /usr/local/lib/libnghttp2.so.14.0.2 /lib/i386-linux-gnu/libnghttp2.so.14.0.2
Voi x86_64
	sudo ln -s /usr/local/lib/libnghttp2.so.14 /lib/x86_64-linux-gnu/libnghttp2.so.14
	sudo ln -s /usr/local/lib/libnghttp2.so.14.0.2 /lib/x86_64-linux-gnu/libnghttp2.so.14.0.2

	sudo ldconfig

4) Test nghttp server
	nghttp --version
	nghttpx --version
	nghttpd --version
	h2load --version
	
	write a file  so-called server.cpp
	/********************************************************/
	#include <nghttp2/asio_http2_server.h>
	#include <iostream>
	using namespace nghttp2::asio_http2;
	using namespace nghttp2::asio_http2::server;

	int main(int argc, char *argv[]) {
	  boost::system::error_code ec;
	  http2 server;

	  server.handle("/", [](const request &req, const response &res) {
		res.write_head(200);
		res.end("hello, world\n");
	  });

	  if (server.listen_and_serve(ec, "nghttp2.test", "8080")) {
		std::cerr << "error: " << ec.message() << std::endl;
	  }
	}
	/********************************************************/
5) Build server 
	g++ -o server server.cpp -lnghttp2_asio -lboost_system -std=c++11 -lssl -lcrypto -lpthread
	
6) Run server
	LD_LIBRARY_PATH=~/HTTP2_src/nghttp2/src/.libs/:~/HTTP2_src/nghttp2/lib/.libs/ ./server_push

7) Build a client as the steps 1 -> 4
	Run session
	$  http://ip/rebuff/bitrate=2000/num=4

	$ ./nghttp -snv -p256 http://172.16.197.1:3002/region1/bitrate=877/20_21_28_29_36_37_44_45  -p128 http://172.16.197.1:3002/region2/bitrate=877/3_4_5_6_11_12_13_14_19_22_27_30_35_38_43_46_51_52_53_54_59_60_61_62  -p1 http://172.16.197.1:3002/region3/bitrate=877/1_2_7_8_9_10_15_16_17_18_23_24_25_26_31_32_33_34_39_40_41_42_47_48_49_50_55_56_57_58_63_64

	$ ./nghttp -snv -p6 http://172.16.165.130:3002/req_vod/bitrate=6000/num=1 -p1 http://172.16.165.130:3002/rebuff/bitrate=900/num=1 > log12/log6_1.txt

	$ ./nghttp -nsv -w10 --har=minh_p14_w10_rate1500_num1_rate900_num_2.txt -p1 http://172.16.23.1:3002/req_vod/bitrate=1500/num=1 -p4 http://172.16.197.1:3002/req_vod/bitrate=900/num=1

	// SHVC 
	$ ./nghttp -snv http://172.16.23.1:3002/rebuff/segment=0/bitrate=1/num=1

	// SHEV

	$ ./nghttp -sn http://172.16.23.1:3002/rebuff/bitrate=1/num=1


8) Install dummynet at the client
	Source: http://hiephv.blogspot.com/2012/08/cai-at-dummynet-cho-linux.html
			https://unix.stackexchange.com/questions/198003/set-default-kernel-in-grub
	*** maybe only work on some older ubuntu kernel

	8.0) Install compatible kernel (3.2.82-030282-generic)
	$ sudo dpkg -i *.deb
	$ grep submenu /boot/grub/grub.cfg
		return: gnulinux-advanced-38ea4a12-6cfe-4ed9-a8b5-036295e62ffc
	$ grep gnulinux /boot/grub/grub.cfg
		return: gnulinux-3.2.82-030282-generic-advanced-52e1b85b-f105-4c93-bd67-1509ddcc70b5
	Edit /etc/default/grub as follows:
	$ sudo gedit /etc/default/grub
		#GRUB_DEFAULT=0
		GRUB_DEFAULT="gnulinux-advanced-38ea4a12-6cfe-4ed9-a8b5-036295e62ffc>gnulinux-3.2.82-030282-generic-advanced-52e1b85b-f105-4c93-bd67-1509ddcc70b5"
	$ sudo update-grub
	$ sudo reboot		

	8.1) cd to the folder of dummynet
	$ make KERNELPATH=/lib/modules/`uname -r`/build USRDIR=/usr

	8.2 After that, there are 2 files generated: ./ipfw/ipfw and ./kipfw-mod/ipfw_mod.ko
	$ sudo cp -i ./ipfw/ipfw /usr/sbin
	$ sudo insmod ./kipfw-mod/ipfw_mod.ko

	Test dummynet

	$ sudo -s
	$ ipfw -q flush
	$ ipfw -q pipe flush
	$ ipfw add pipe 3 ip from any to any

	$ ipfw pipe 3 config bw 1000Kbit/s delay 50ms

	==> ping to another connected PC ==> RTT = 10ms

/********************************************************/
HTTP Archive Viewer: an extension of Chrome to draw timelne of requests and responses.

nghttp2_priority_spec_init
Synopsis

#include <nghttp2/nghttp2.h>

void nghttp2_priority_spec_init(nghttp2_priority_spec *pri_spec, int32_t stream_id, int32_t weight, int exclusive)

    Initializes pri_spec with the stream_id of the stream to depend on with weight and its exclusive flag. If exclusive is nonzero, exclusive flag is set.

    The weight must be in [NGHTTP2_MIN_WEIGHT, NGHTTP2_MAX_WEIGHT], inclusive.

/*********************** how to use priority *********************************/
1. Viet thuat toan vao 1 ham e.g: Minh_restrans(HttpClient *client,int index) de chon bitrate
2. Trong ham Minh_retrans(), sau khi chon bitrate xong thi goi ham Minh_req_vod_rate(client,rate1,rate2,index) de send request
	if m_retrans == true ==> retransmit ONE segment

	/*****************/
	for (int i = 1; i <= 3; i++){
		if(i!=3)	// NEU KHOng phai la region 3 ==> priority ti le
		 	nghttp2_priority_spec_init(&dang_pri_spec, 11, (int)(stoi(rate_string)/num_of_tile), 0);
		else 	// neu la region 3
		 	nghttp2_priority_spec_init(&dang_pri_spec, 11,1, 0);

		 /*****************/	// for each region, use a request
	    if (client->add_request(dang_uri+"/region"+to_string(i)+"/bitrate="+rate_string+"/"+tile_str, 
	                              dang_data_prd, dang_data_length, dang_pri_spec)) {
	    	if(submit)
	      	submit_request(client, dang_headers, client->reqvec.back().get()); 
	    }
	}
    /*****************/