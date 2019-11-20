#!/bin/bash

audio_files='g7221c_98_32kbps.rtpdump PCMA_10ms.rtpdump PCMU_10ms.rtpdump g722_10ms.rtpdump g722_30ms.rtpdump PCMA_30ms.rtpdump PCMA_10ms.rtpdump g722_9.rtpdump PCMU.rtpdump dtmf_g722.rtpdump'

addr_port=$1

while true;
do
	for file in $audio_files
	do
		repeat_cnt=1
		while [ $repeat_cnt -gt 0 ]
		do
			echo "play $file"
			echo "repeat_cnt: $repeat_cnt"
			rtpplay -T -f ./rtpdump_g7xx/$file $1
			((repeat_cnt--))
		done
	done
done
