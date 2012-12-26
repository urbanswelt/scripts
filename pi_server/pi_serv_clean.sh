#!/bin/bash
data=''
while read p; do
	temp=`echo $p | awk -F\  ' { print $2 } ' | awk -F: ' { print $1 } '`
	data=`echo $data $temp`
done < $1
apt-get purge $data && apt-get autoremove && apt-get update && apt-get upgrade && rm pkgs.txt cleanup.sh pi_serv_clean.sh && echo 'allocation after cleaning' && df -lah | awk '$NF=="/"{print}'
