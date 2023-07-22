echo "This script will also install Docker Compose"

./$home/$user/pi-scripts/all/update.sh

echo "Installing Docker"
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER
echo "Docker Installed"
echo ""

sudo docker run hello-world
