read -p "Enter local IP address : " localip
read -p "Enter DVCS IP:PORT address: " dvcsip


for file in *.xml
do
  echo "------------------------------------------"
  echo "-------------------------------------------"
  echo "------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"

  sleep 5

sipp -sf $file -i $localip $dvcsip -m 1 -trace_msg -message_file Logs/basic_codecs.log

  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "------------------------------------------"
  echo "------------------------------------------"
  sleep 3
done

~

