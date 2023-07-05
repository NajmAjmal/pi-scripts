echo "Install Custom Server Scripts"
echo ""
echo "Contains"
echo ""
echo " - PIVPN"
echo " - PIHOLE"
echo " - DOCKER"
echo ""

echo " Would you like to install PIVPN"
read -p "Enter 'y'/'n': " choice
if [ "$choice" == "y" ]; then
    curl -L https://install.pivpn.io | bash


echo " Would you like to install PIHOLE"
read -p "Enter 'y'/'n': " choice
if [ "$choice" == "y" ]; then
    curl -sSL https://install.pi-hole.net | bash


echo " Would you like to install DOCKER"
read -p "Enter 'y'/'n': " choice
if [ "$choice" == "y" ]; then
    curl -sSL https://get.docker.com | sh
    sudo usermod -aG docker $USER
    docker run hello-world

