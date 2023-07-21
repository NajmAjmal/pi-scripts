# Going to main directory and removing existing pi-scripts, used for updating
cd
rm -r -f pi-scripts
# Installing pi-scripts
git clone https://github.com/NajmAjmal/pi-scripts
cd pi-scripts
# Giving perms to all scripts
chmod +x perm.sh
./perm.sh
