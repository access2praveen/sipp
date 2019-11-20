rm -rf Logs/*
sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 5020 10.204.66.46:5080 -sf dvms_1.xml -trace_msg -message_file Logs/CS1_46.msg.log -trace_logs -log_file Logs/CS1_46.log -trace_err -error_file Logs/CS1_46.err.log -trace_calldebug -calldebug_file Logs/CS1_46.debug.log -3pcc 10.204.66.46:4020 -aa &


sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 6020 10.204.66.84:5080 -sf dvms_0_46.xml -trace_msg -message_file Logs/CS0_84_46.msg.log -trace_logs -log_file Logs/CS0_84_46.log -trace_err -error_file Logs/CS0_84_46.err.log -trace_calldebug -calldebug_file Logs/CS0_84_46.debug.log -3pcc 10.204.66.46:4020 -aa &

