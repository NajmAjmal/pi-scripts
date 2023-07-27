# Basic setup script

echo "Running Update"
sudo ./all/update.sh

echo "Installing Git & Fortune"
sudo apt install git fortune

echo "Giving sudo perms"
sudo usermod -aG sudo $USER
