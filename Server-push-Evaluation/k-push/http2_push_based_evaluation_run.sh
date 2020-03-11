#!/bin/bash
./nghttp -ns --ABR=AGG --segment-duration=1000 --RTT=50 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1
./nghttp -ns --ABR=AGG --segment-duration=1000 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1
./nghttp -ns --ABR=AGG --segment-duration=2000 --RTT=50 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1