#!/bin/bash

audio_files='g7221_97_32kbps.rtpdump, g711u_10ms.rtpdump g711a_10ms.rtpdump g722_10ms.rtpdump g711a_8.rtpdump  g7221_97_32kbps.rtpdump  g7221c_100_48kbps.rtpdump  g722_9.rtpdump g711u_0.rtpdump  g7221_99_24kbps.rtpdump  g7221c_98_32kbps.rtpdump'

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
