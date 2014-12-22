echo 'This will update NAT'
pause
sudo apt-get update 
&&
sudo apt-get install ntp
&&
dpkg -s ntp | grep Version
