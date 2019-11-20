
echo "Executing Local Participant Recording in wav format" 
for file in opus/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -inf db -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/opus.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done

echo "Executing Local Participant Recording in dvcr format"
for file in G7xx/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -inf db -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/G7xx.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done




echo "Executing HTTP Participant Recording in dvcr format"
for file in L16/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -inf db -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/L16.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done




echo "Executing HTTP Participant Recording in dvcr format"
for file in AMRWB/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -inf db -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/AMR.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done



for file in DCP/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -inf db -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/DCP.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done

