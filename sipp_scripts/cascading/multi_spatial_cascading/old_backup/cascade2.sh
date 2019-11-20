sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 5010 10.204.66.87:5080 -sf dvms_2.xml -trace_msg -message_file Logs/CS2_87.msg.log -trace_logs -log_file Logs/CS2.log -trace_err -error_file Logs/CS2_87.err.log -trace_calldebug -calldebug_file Logs/CS2_87.debug.log -3pcc 10.204.66.46:5020 -aa &

sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 6010 10.204.66.84:5080 -sf dvms_0_87.xml -trace_msg -message_file Logs/CS0_84_87.msg.log -trace_logs -log_file Logs/CS0_84_87.log -trace_err -error_file Logs/CS0_84_87.err.log -trace_calldebug -calldebug_file Logs/CS0_84_87.debug.log -3pcc 10.204.66.46:5020 -aa &

