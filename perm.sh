# Gives Permissions to all programs in the repo

# install directory perms
chmod +x server.sh
chmod +x setup.sh

# Docker directory perms
cd docker
chmod +x docker-install.sh
chmod +x yacht.sh
chmod +x nextcloud.sh
chmod +x kasm.sh
chmod +x docker-c-install.sh
cd -

# all directory perms
cd all
chmod +x update.sh
chmod +x xmrig.sh
chmod +x matrix.sh
chmod +x htop.sh
chmod +x storage.sh
chmod +x wifi-hotspot.sh
chmod +x hotspot.sh
cd -

# misc directory perms
cd misc
chmod +x warning-external-scripts.sh
chmod +x auto-update-script.sh
cd -

## GUI directory perms
cd gui
chmod +x pi-apps.sh
cd -
