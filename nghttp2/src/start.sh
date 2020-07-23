#!/usr/bin/env bash

echo "*************************** Start ***************************"

ipfw -q flush
ipfw -q pipe flush

ipfw add pipe 3 ip from 192.168.9.76 to me
ipfw add pipe 3 ip from me to 192.168.9.76

echo  "********************* BW = 3500 Kbit/s  *********************"
ipfw pipe 3 config bw 3700Kbit/s delay 25ms
sleep 10.0s

echo  "********************* BW = 2500 Kbit/s  *********************"
ipfw pipe 3 config bw 2500Kbit/s delay 25ms
sleep 10.0s

echo  "********************* BW = 4000 Kbit/s  *********************"
ipfw pipe 3 config bw 3700Kbit/s delay 25ms
sleep 20.0s

echo  "********************* BW = 1500 Kbit/s  *********************"
ipfw pipe 3 config bw 1600Kbit/s delay 25ms
sleep 10.0s

echo  "********************* BW = 3500 Kbit/s  *********************"
ipfw pipe 3 config bw 3700Kbit/s delay 25ms
sleep 10.0s

ipfw -q flush
ipfw -q pipe flush

echo  "*************************** Finish  ***************************"


