#rm -rf Logs/*
#read -p "Enter local IP address : " localip
#read -p "Enter DVCS IP:PORT address: " dvcsip

echo "Executing Local Participant Recording in wav format" 

for file in ES/*.xml
do
  for csv in db/*
  do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "Input file:" $csv
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 2
  sipp -sf $file -inf $csv -i 10.204.66.5 10.204.66.84:5080 -m 1 -trace_msg -message_file Logs/ES.log -aa

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 2
  done
 
done


