 #! /bin/bash
 set -eux

 sudo apt-get update
 sudo apt-get install -y \
   openjdk-8-jre-headless \
   haveged \
   apt-transport-https


if [[ -f /etc/apt/sources.list.d/100-unifi.list ]]; then
    echo "100-unifi.list exists."
else
    echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-unifi.list
fi
if [[ -f /etc/apt/trusted.gpg.d/unifi-repo.gpg ]]; then
    echo "unifi-repo.gpg."
else
    sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg
fi
sudo apt-get update
sudo apt-get install -y unifi
