#!/bin/bash
cd
rm pi_serv_clean.sh
rm pkgs.txt
echo Download Beginn
wget -q -N --no-check-certificate https://raw.github.com/urbanswelt/scripts/master/pi_server/pi_serv_clean.sh
wget -q -N --no-check-certificate https://raw.github.com/urbanswelt/scripts/master/pi_server/pkgs.txt
echo Download End
chmod -R 770 pi_serv_clean.sh
sudo ./pi_serv_clean.sh pkgs.txt