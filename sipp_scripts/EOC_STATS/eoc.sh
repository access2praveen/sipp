rm -rf Logs/*
read -p "Enter local IP address : " localip
read -p "Enter DVCS IP:PORT address: " dvcsip
read -p "Enter csv file name:" csv

echo "Executing Local Participant Recording in wav format" 

for file in ES/*.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -inf db/$csv -i $localip $dvcsip -m 1 -trace_msg -message_file Logs/ES_$csv.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done


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
  sipp -sf $file -inf db/$csv -i $localip $dvcsip -m 1 -trace_msg -message_file Logs/opus_$csv.log -aa

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
  sipp -sf $file -inf db/$csv -i $localip $dvcsip -m 1 -trace_msg -message_file Logs/G7xx_$csv.log -aa

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
  sipp -sf $file -inf db/$csv -i $localip $dvcsip -m 1 -trace_msg -message_file Logs/L16_$csv.log -aa

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
  sipp -sf $file -inf db/$csv -i $localip $dvcsip -m 1 -trace_msg -message_file Logs/AMR_$csv.log -aa

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
  sipp -sf $file -inf db/$csv -i $localip $dvcsip -m 1 -trace_msg -message_file Logs/DCP_$csv.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
done

