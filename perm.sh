# Gives Permissions to all programs in the repo

# install directory perms
chmod +x server.sh
chmod +x setup.sh

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
