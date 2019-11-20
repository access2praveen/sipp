#/bin/sh

if [ $# -eq 1 ]; then 
echo -e "Usage:Give Local IP , RemoteIP:RemotePort as arguments"
exit 1 
fi

echo running sipp with all_codec.xml $1 $2

sleep 5

sipp -default_behaviors -bye -m 1 -l 1 -i $1 -p 5120 $2 -sf all_codec.xml -trace_msg -message_file log/all_codec.msg.log -trace_logs -log_file log/all_codec.log -trace_err -error_file log/all_codec.err.log
