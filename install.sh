echo "Installing Git"
sudo apt install git -y
# Going to main directory and removing existing pi-scripts, used for updating
cd
sudo rm -r -f pi-scripts
# Installing pi-scripts
sudo git clone https://github.com/NajmAjmal/pi-scripts
cd pi-scripts
# Giving perms to all scripts
sudo chmod +x perm.sh
./perm.sh
# Setup
./setup.sh
