
for file in ffmpeg_amr/*.xml
do
  echo $file
  sipp -sf $file -i 10.204.66.30 10.204.66.84:5080 -m 1
done
 
