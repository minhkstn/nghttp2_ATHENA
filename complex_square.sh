#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from 192.168.168.1 to me
ipfw add pipe 3 ip from me to 192.168.168.1

ipfw pipe 3 config bw 1000Kbit/s delay 25ms
sleep 10.0s

ipfw pipe 3 config bw 1500Kbit/s delay 25ms
sleep 10.0s

ipfw pipe 3 config bw 2000Kbit/s delay 25ms
sleep 20.0s

ipfw pipe 3 config bw 1000Kbit/s delay 25ms
sleep 5.0s

ipfw pipe 3 config bw 1500Kbit/s delay 25ms
sleep 15.0s

ipfw pipe 3 config bw 1000Kbit/s delay 25ms
sleep 5.0s

ipfw pipe 3 config bw 2500Kbit/s delay 25ms
sleep 30.0s

ipfw pipe 3 config bw 2000Kbit/s delay 25ms
sleep 30.0s

ipfw pipe 3 config bw 3000Kbit/s delay 25ms
sleep 30.0s

ipfw -q flush
ipfw -q pipe flush