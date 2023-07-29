# Gives Permissions to all programs in the repo

# install directory perms
sudo chmod +x server.sh
sudo chmod +x setup.sh

# Docker directory perms
cd docker
sudo chmod +x docker-install.sh
sudo chmod +x yacht.sh
sudo chmod +x nextcloud.sh
sudo chmod +x kasm.sh
sudo chmod +x docker-c-install.sh
cd -
# Docker/Guac
cd docker/guac
chmod +x start.sh
cd -

# all directory perms
cd all
sudo chmod +x update.sh
sudo chmod +x xmrig.sh
sudo chmod +x matrix.sh
sudo chmod +x htop.sh
sudo chmod +x storage.sh
sudo chmod +x wifi-hotspot.sh
sudo chmod +x hotspot.sh
cd -

# misc directory perms
cd misc
sudo chmod +x warning-external-scripts.sh
sudo chmod +x auto-update-script.sh
cd -

## GUI directory perms
cd gui
sudo chmod +x pi-apps.sh
cd -
