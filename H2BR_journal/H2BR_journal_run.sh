#!/bin/bash

for SD in 1000
do
	for NETWORK in 4G
	do
		for PL in 0 1 3 5
		do
			for ABR in AGG BBA SARA
			do
				for RETRANS in NONE PROPOSAL SQUAD
				do
					if [ $RETRANS == PROPOSAL ]
					then
						for OPTIMIZE in 0 1
						do
							for i in {1..13}
							do 
								echo SD: $SD. Retrans: $RETRANS. OPTIMIZE: $OPTIMIZE. ABR: $ABR. Packet-loss: $PL. 
								./nghttp -sn --retrans-method=$RETRANS --segment-duration=$SD --abr=$ABR --packet-loss=$PL --network-mode=$NETWORK --optimize-bitrate=$OPTIMIZE http://172.16.23.1:3002/rebuff/bitrate=1800/num=1
								echo Sleeping 5 seconds before running a new session
								sleep 5
							done
						done
					else
						for i in {1..13}
						do	
							echo SD: $SD. Retrans: $RETRANS. ABR: $ABR. Packet-loss: $PL. 
							./nghttp -sn --retrans-method=$RETRANS --segment-duration=$SD --abr=$ABR --packet-loss=$PL --network-mode=$NETWORK http://172.16.23.1:3002/rebuff/bitrate=1800/num=1
							echo Sleeping 5 seconds before running a new session
							sleep 5
						done
					fi
				done
			done
		done
	done
done


echo "All done"