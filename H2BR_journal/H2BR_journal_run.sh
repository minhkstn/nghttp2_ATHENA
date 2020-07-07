#!/bin/bash
for i in {1..5}
do 
	for SD in 1000
	do
		for NETWORK in 4G
		do
			for PL in 0 
			do
				for ABR in AGG BBA SARA
				do
					for RETRANS in PROPOSAL
					do
						for OPTIMIZE in 1
						do
							./nghttp -sn --retrans-method=$RETRANS --segment-duration=$SD --abr=$ABR --packet-loss=$PL --network-mode=$NETWORK --optimize-bitrate=$OPTIMIZE http://172.16.23.1:3002/rebuff/bitrate=1800/num=1 > /home/minh/Documents/http_result/H2BR_HEVC/NETWORK_$NETWORK/PL_$PL/SD_${SD}ms/ABR_$ABR/RETRANS_$RETRANS/log_$i.txt
							echo Sleeping 10 seconds before running a new session
							sleep 10
							echo "Running --retrans-method=$RETRANS --segment-duration=$SD --abr=$ABR --packet-loss=$PL --network-mode=$NETWORK --optimize-bitrate=$OPTIMIZE http://172.16.23.1:3002/rebuff/bitrate=1800/num=1"
						done
					done
				done
			done
		done
	done
done

echo "All done"