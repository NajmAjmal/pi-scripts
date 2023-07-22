./$home/$user/pi-scripts/all/update.sh

echo "Installing Dependencies"
sudo apt-get install -y libffi-dev libssl-dev python3 python3-pip
echo "Installing Docker Compose"
sudo pip3 install docker-compose
echo "Docker Compose Installed"
