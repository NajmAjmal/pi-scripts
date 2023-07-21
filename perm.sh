# Gives Permissions to all programs in the repo

# install directory perms
chmod +x server.sh

# all directory perms
cd all
chmod +x update.sh
chmod +x setup.sh
chmod +x xmrig.sh
cd -

## GUI directory perms
cd gui
chmod +x pi-apps.sh
cd -
