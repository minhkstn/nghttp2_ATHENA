#!/bin/bash
for buffer_max in 20000 15000 10000 5000
do
	if [ $buffer_max -eq 20000 ]
	then 
		for packet_loss in 0 1 3 5
		do
			for i in {1..5}
			do
				./nghttp -sn --buffer-max=$buffer_max --packet-loss=$packet_loss http://172.16.23.1:3002/rebuff/segment=0/bitrate=1/num=1
			done
		done
	else
		for i in {1..5}
		do
			./nghttp -sn --buffer-max=$buffer_max --packet-loss=0 http://172.16.23.1:3002/rebuff/segment=0/bitrate=1/num=1
		done
	fi
done

echo "ALL done"