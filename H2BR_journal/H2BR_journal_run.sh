#!/bin/bash
for i in {1..5}
do 
	for NETWORK in 4G
	do
		for PL in 0 1 3 5
		do
			for ABR in AGGRESSIVE SARA BBA
			do
				for RETRANS in NONE PROPOSAL
				do
					./nghttp -sn --retrans-method=$RETRANS --abr=$ABR --packet-loss=$PL --network-mode=$NETWORK http://172.16.23.1:3002/rebuff/bitrate=1800/num=1
				done
			done
		done
	done
done

echo "All done"