# Installs usefull programs

echo "Running Update"
sudo ./update.sh

echo "Installing Git & Fortune"
sudo apt install git fortune

sudo usermod -aG sudo $USER
