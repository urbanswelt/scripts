#Clean up Raspberry PI 
cd
rm pi_serv_clean.sh
rm pkgs.txt
wget -N --no-check-certificate https://github.com/urbanswelt/scripts/blob/master/pi_server/pi_serv_clean.sh
wget -N --no-check-certificate https://github.com/urbanswelt/scripts/blob/master/pi_server/pkgs.txt
chmod -R 770 pi_serv_clean.sh
sudo ./pi_serv_clean.sh pkgs.txt