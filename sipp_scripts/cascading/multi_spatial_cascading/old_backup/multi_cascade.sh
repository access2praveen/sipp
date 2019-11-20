rm -rf Logs/* 

sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 5020 10.204.66.46:5080 -sf dvms_1.xml -trace_msg -message_file Logs/CS1_46.msg.log -trace_logs -log_file Logs/CS1_46.log -trace_err -error_file Logs/CS1_46.err.log -trace_calldebug -calldebug_file Logs/CS1_46.debug.log -3pcc 10.204.66.46:4020 &


sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 6020 10.204.66.84:5080 -sf dvms_0_46.xml -trace_msg -message_file Logs/CS0_46.msg.log -trace_logs -log_file Logs/CS0_46.log -trace_err -error_file Logs/CS0_46.err.log -trace_calldebug -calldebug_file Logs/CS0_46.debug.log -3pcc 10.204.66.46:4020 &

sleep 20

sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 5010 10.204.66.86:5080 -sf dvms_2.xml -trace_msg -message_file Logs/CS2_86.msg.log -trace_logs -log_file Logs/CS2.log -trace_err -error_file Logs/CS2_86.err.log -trace_calldebug -calldebug_file Logs/CS2_86.debug.log -3pcc 10.204.66.46:5020 &
sleep 2 

sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 6010 10.204.66.84:5080 -sf dvms_0_86.xml -trace_msg -message_file Logs/CS0_86.msg.log -trace_logs -log_file Logs/CS0.log -trace_err -error_file Logs/CS0_86.err.log -trace_calldebug -calldebug_file Logs/CS0_86.debug.log -3pcc 10.204.66.46:5020 &
