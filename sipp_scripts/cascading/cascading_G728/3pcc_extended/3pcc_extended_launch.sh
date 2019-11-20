sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 5020 -trace_msg -message_file Logs/s1.log -slave s1 10.204.66.46:5080 -sf dvms_1.xml -slave_cfg test.cfg &

sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 5021 -trace_msg -message_file Logs/s2.log -slave s2 10.204.66.86:5080 -sf dvms_2.xml -slave_cfg test.cfg &

sipp -default_behaviors -bye -m 1 -l 1 -r 1 -i 10.204.66.46 -p 6020 -trace_msg -message_file Logs/master.log -master m 10.204.66.84:5080 -sf dvms_0.xml -slave_cfg test.cfg &



