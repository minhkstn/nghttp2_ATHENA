#!/bin/bash
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_5000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_5000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_5000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_5000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_5000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_5000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_5000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_5000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_5000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_5000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_5000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_5000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_5000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_5000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_5000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_5000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_5000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_5000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_5000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_5000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=1000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_1000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_2_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_3_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_4_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_FIXED_5_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_10000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_10000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_10000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_10000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=2000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_2000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_80000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_80000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_80000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_2_Buff_80000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_80000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_80000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_80000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_3_Buff_80000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_80000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_80000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_80000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_4_Buff_80000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_80000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_80000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_80000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_FIXED_5_Buff_80000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_20000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_40000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_40000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_40000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_40000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_80000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_80000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_80000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=4000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_4000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_80000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_30000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_30000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_30000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_30000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_60000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_60000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_60000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_60000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_120000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_120000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_120000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_2 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_2_Buff_120000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_30000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_30000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_30000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_30000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_60000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_60000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_60000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_60000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_120000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_120000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_120000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_3 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_3_Buff_120000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_30000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_30000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_30000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_30000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_60000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_60000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_60000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_60000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_120000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_120000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_120000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_4 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_4_Buff_120000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_30000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_30000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_30000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_30000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_60000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_60000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_60000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_60000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_120000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_120000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_120000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_FIXED_5 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_FIXED_5_Buff_120000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_30000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_30000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_30000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=5 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_30000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_60000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_60000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_60000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=10 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_60000ms_RTT_300ms_log.txt

./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=0 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_120000ms_RTT_0ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=100 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_120000ms_RTT_100ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=200 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_120000ms_RTT_200ms_log.txt
./nghttp -ns --ABR=AGG --segment-duration=6000 --Kpush=INDEPENDENT_ADAPT_1 --buff=20 --RTT=300 http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1 > AGG_SD_6000ms_Kpush_INDEPENDENT_ADAPT_1_Buff_120000ms_RTT_300ms_log.txt

