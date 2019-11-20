rm -rf Logs/*

sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 172.31.30.204 -p 5020 172.31.23.77:5080 -sf dvms_1.xml -trace_msg -message_file Logs/1.msg.log -trace_logs -log_file Logs/1.log -trace_err -error_file Logs/1.err.log -trace_calldebug -calldebug_file Logs/1.debug.log -3pcc 172.31.30.204:4020 -aa &

sleep 5 

sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 172.31.30.204 -p 6020 10.0.2.160:5080 -sf dvms_0.xml -trace_msg -message_file Logs/0.msg.log -trace_logs -log_file Logs/0.log -trace_err -error_file Logs/0.err.log -trace_calldebug -calldebug_file Logs/0.debug.log -3pcc 172.31.30.204:4020 -aa &
