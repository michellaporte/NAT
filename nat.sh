read -p "Press [enter] to update NTP..."
sudo apt-get update
sudo apt-get install ntp
dpkg -s ntp | grep Version
