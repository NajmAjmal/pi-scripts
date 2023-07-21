# Gives Permissions to all programs in the repo

# install directory perms
chmod +x server.sh
chmod +x setup.sh

# Docker directory perms
cd docker
chmod +x docker-install.sh
chmod +x yacht.sh
cd -

# all directory perms
cd all
chmod +x update.sh
chmod +x xmrig.sh
chmod +x matrix.sh
cd -

## GUI directory perms
cd gui
chmod +x pi-apps.sh
cd -
