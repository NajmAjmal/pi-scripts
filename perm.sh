# Gives Permissions to all programs in the repo

# install directory perms
chmod +x server.sh

# all directory perms
cd all
chmod +x update.sh
chmod +x setup.sh
cd -

## GUI directory perms
cd GUI
chmod +x pi-apps.sh
cd -
