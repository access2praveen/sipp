#!/bin/sh
for file in rtpdump_g7xx/*.rtpdump
do
  echo $file
  rtpplay -T -f $file $1
done

