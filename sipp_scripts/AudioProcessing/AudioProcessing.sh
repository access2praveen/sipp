rm -rf results_apenable_disable.txt
for file in APEnable_Disable_FG_AGC/*.xml
do
  echo Launching test $file >> results_apenable_disable.txt
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "Started Executing Scenario file :" $file
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"

  sleep 5
  sipp -sf $file -i 10.204.66.84 10.204.66.84:5080 -m 1 -aa
   if test $? -ne 0
    then
        echo Test $file failed >> results_apenable_disable.txt
    else
        echo Test $file succeeded >> results_apenable_disable.txt
    fi

  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "Completed Executing Scenario file :" $file
  echo "-------------------------------------------------------------------------------------------------------------------------------"
  echo "-------------------------------------------------------------------------------------------------------------------------------"

  sleep 3

done

