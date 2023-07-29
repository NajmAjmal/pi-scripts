echo "Installing Git"
sudo apt install git -y
# Going to main directory and removing existing pi-scripts, used for updating
cd /$home/$user/
sudo rm -r -f pi-scripts
# Installing pi-scripts
git clone https://github.com/NajmAjmal/pi-scripts
cd pi-scripts
# Giving perms to all scripts
sudo chmod +x perm.sh
./perm.sh
# Setup
./setup.sh
