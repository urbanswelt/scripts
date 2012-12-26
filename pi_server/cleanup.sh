#!/bin/bash
# init
function pause(){
   read -p "$*"
}

cd
echo 'Download Beginn'
wget -q -N --no-check-certificate https://raw.github.com/urbanswelt/scripts/master/pi_server/pi_serv_clean.sh
wget -q -N --no-check-certificate https://raw.github.com/urbanswelt/scripts/master/pi_server/pkgs.txt
echo 'Download End'
chmod -R 770 pi_serv_clean.sh
echo 'allocation before cleaning'
df -lah | awk '$NF=="/"{print}'
pause 'Press [Enter] key to continue...'
sudo ./pi_serv_clean.sh pkgs.txt