#!/bin/sh
cd
rm pi_serv_clean.sh pkgs.txt
rm pkgs.txt
wget -N --no-check-certificate https://raw.github.com/urbanswelt/scripts/master/pi_server/pi_serv_clean.sh
wget -N --no-check-certificate https://raw.github.com/urbanswelt/scripts/master/pi_server/pkgs.txt
chmod -R 770 pi_serv_clean.sh
sudo ./pi_serv_clean.sh pkgs.txt