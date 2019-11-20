#!/bin/sh
set -x 
dvcs=10.204.66.84
dvcsport=5080
localhost=10.204.66.46

for file in AMR-WB/*.xml
do
  echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
  sleep 5 
  sipp -sf $file -i $localhost $dvcs:$dvcsport -m 1
  echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
  sleep 5
done


echo "Completed AMR-WB Enable Test Cases, Moving on to AMR-WB Disable Test Cases"
ssh $dvcs sed -i 's/enable_amr_wb=true/enable_amr_wb=false/g' /opt/dolby/etc/dvconference_server.cfg
echo "------------------------------------Restarting DVCS-----------------------------------------------------"
ssh $dvcs "/opt/dolby/etc/init.d/dvconference_server reload"
sleep 10

for file in AMR_DISABLE/*.xml
do
  echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
  sleep 5
  sipp -sf $file -i $localhost $dvcs6:$dvcsport0 -m 1
  echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

done

sleep 3 

echo "Re-enabling AMR parameter in dvconference_server.cfg file " 
ssh $dvcs sed -i 's/enable_amr_wb=false/enable_amr_wb=true/g' /opt/dolby/etc/dvconference_server.cfg
ssh $dvcs "/opt/dolby/etc/init.d/dvconference_server reload"

sleep 10
