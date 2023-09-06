#!/bin/bash

echo "Granting sudo permissions"
sudo usermod -aG sudo $USER

echo "Installing Git & Fortune"
sudo apt install git fortune -y

# Going to the main directory and removing existing pi-scripts, used for updating
cd ~
sudo rm -rf pi-scripts

# Installing pi-scripts
sudo git clone https://github.com/NajmAjmal/pi-scripts
cd pi-scripts

# Giving permissions to all scripts
sudo chmod +x perm.sh
./perm.sh

sudo ./all/update.sh
