#!/bin/bash
for i in {1..13}
do
	for BUFFER in 20000 15000 10000
	do
		if [ $BUFFER == 20000 ]
		then
			for PL in 0 1 3 5
			do 
				./nghttp -sn --buffer-max=$BUFFER --packet-loss=$PL http://172.16.23.1:3002/rebuff/segment=0/bitrate=1/num=1
				echo Sleeping 5s
				sleep 5		
			done
		else
			for PL in 0 
			do 
				./nghttp -sn --buffer-max=$BUFFER --packet-loss=$PL http://172.16.23.1:3002/rebuff/segment=0/bitrate=1/num=1
				echo Sleeping 5s
				sleep 5		
			done
		fi
	done
done
