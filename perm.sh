# Gives Permissions to all programs in the repo

# Install directory perms
sudo chmod +x server.sh
sudo chmod +x setup.sh
sudo chmod +x uninstall.sh
sudo chmod +x mine.sh

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
sudo chmod +x start.sh
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
sudo chmod +x kasm-workspaces.sh
sudo chmod +x minecraft-server.sh
sudo chmod +x hack-chat.sh
cd -
# Macchange
cd all/macchange
sudo chmod +x install.sh
sudo chmod +x random-mac.sh
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
