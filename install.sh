echo "Giving sudo perms"
sudo usermod -aG sudo $USER

echo "Installing Git & Fortune"
sudo apt install git fortune -y

# Going to main directory and removing existing pi-scripts, used for updating
cd
sudo rm -r -f pi-scripts
# Installing pi-scripts
sudo git clone https://github.com/NajmAjmal/pi-scripts
cd pi-scripts
# Giving perms to all scripts
sudo chmod +x perm.sh
./perm.sh

sudo ./pi-scripts/all/update.sh

