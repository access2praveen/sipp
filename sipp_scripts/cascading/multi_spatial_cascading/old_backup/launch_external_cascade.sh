rm -rf Logs/* 
sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 5010 10.204.66.86:5080 -sf dvms_3.xml -trace_msg -message_file Logs/3.msg.log -trace_logs -log_file Logs/3.log -trace_err -error_file Logs/3.err.log -trace_calldebug -calldebug_file Logs/3.debug.log -3pcc 10.204.66.46:5020 &
sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 6010 10.204.66.84:5080 -sf dvms_0.xml -trace_msg -message_file Logs/0.msg.log -trace_logs -log_file Logs/0.log -trace_err -error_file Logs/0.err.log -trace_calldebug -calldebug_file Logs/0.debug.log -3pcc 10.204.66.46:5020 &
