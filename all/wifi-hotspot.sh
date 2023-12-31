./$home/$user/pi-scripts/all/update.sh

echo "Installing Dependencies"
sudo apt install -y libgtk-3-dev build-essential gcc g++ pkg-config make hostapd libqrencode-dev libpng-dev

cd
git clone https://github.com/lakinduakash/linux-wifi-hotspot
cd linux-wifi-hotspot

#build binaries
make

#install
sudo make install-cli-only

sudo systemctl enable create_ap
sudo wihotspot
