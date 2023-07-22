echo "This script will also install Docker Compose"

./$home/$user/pi-scripts/all/update.sh

echo "Installing Docker"
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER
echo "Docker Installed"
echo ""
echo "Installing Docker Compose"
sudo apt-get install -y libffi-dev libssl-dev python3 python3-pip
sudo pip3 install docker-compose
echo "Docker Compose Installed"

sudo docker run hello-world
