#!/bin/bash

# Function to display prompt and read user input
function ask_yes_no {
    while true; do
        read -p "$1 (y/n): " answer
        case "$answer" in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer 'yes' or 'no'.";;
        esac
    done
}

xmrig_automine() {
  # Get the current user
  user=$(whoami)

  # Command to be added to crontab
  cron_command="@reboot sudo ./$home/$user/mine.sh"

  # Add the command to the user's crontab
  echo "$cron_command" >> "/var/spool/cron/crontabs/$user"

echo "Installing XMRig"

./update.sh

# Ask if the user wants to add an additional feature
if ask_yes_no "Do you want xmrig to auto-mine at boot"; then
    # Add the extra command here that should be executed if the user chose 'yes'
    xmrig_automine
else
    
fi

echo "Installing Dependency"
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

echo "Main directory"
cd
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
./xmrig -o gulf.moneroocean.stream:10128 -u 4657q4dnsjLWtzeW4XN3wG9swFumWAZB9i1pegTLMxVAQy5E5AE8uif42kkHWcWc9vDcLUmzeCf3pV7mmrJQQqqe84dtASi -p pi
