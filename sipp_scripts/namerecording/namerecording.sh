
echo "Executing Local Participant Recording in wav format" 
for file in local_recording/wav_recording/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/wav_format.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done

echo "Executing Local Participant Recording in dvcr format"
for file in local_recording/dvcr_recording/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/dvcr_format.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done




echo "Executing HTTP Participant Recording in dvcr format"
for file in http_recording/http_dvcr_rec/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/dvcr_http_format.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done




echo "Executing HTTP Participant Recording in dvcr format"
for file in http_recording/http_wav_rec/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/http_wav_format.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done

