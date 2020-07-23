#!/usr/bin/env bash

echo "*************************** Start ***************************"

ipfw -q flush
ipfw -q pipe flush

ipfw add pipe 3 ip from 192.168.9.76 to me
ipfw add pipe 3 ip from me to 192.168.9.76

echo  "********************* BW = 5000 Kbit/s  *********************"
ipfw pipe 3 config bw 5000Kbit/s delay 14ms
sleep 5.0s

echo  "********************* BW = 2000 Kbit/s  *********************"
ipfw pipe 3 config bw 2000Kbit/s delay 14ms
sleep 7.0s

ipfw -q flush
ipfw -q pipe flush

echo  "*************************** Finish  ***************************"


