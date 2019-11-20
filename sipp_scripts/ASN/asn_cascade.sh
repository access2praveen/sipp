#sipp -sf conf0_silent_client_84.xml  -i 10.204.66.5 10.204.66.84:5080 -m 1 -aa -trace_msg -bg
sipp -sf conf1_talker.xml -i 10.204.66.5 10.204.66.46:5080 -m 1 -aa -trace_msg -bg
sleep 2
sipp -sf conf1_talker.xml -i 10.204.66.5 10.204.66.46:5080 -m 1 -aa -trace_msg -bg

sipp -sf conf1_talker.xml -i 10.204.66.5 10.204.66.84:5080 -m 1 -aa -trace_msg -message_file 84_talking.log -bg

