#!/bin/bash

# Check if script is run with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root."
   exit 1
fi

# Set your hotspot name and password
HOTSPOT_NAME="MyHotspot"
HOTSPOT_PASS="MySecretPassword"

# Install required packages (uncomment the relevant command for your package manager)
# Debian/Ubuntu
#apt-get update
#apt-get install hostapd dnsmasq iw iproute2

# Fedora/RHEL
#dnf install -y hostapd dnsmasq iw iproute

# Stop services if they are running
systemctl stop hostapd
systemctl stop dnsmasq

# Configure the network interface (change wlan1 to your wireless interface)
ip link set wlan1 down
ip addr flush dev wlan1
ip addr add 10.10.10.10/24 dev wlan1
ip link set wlan1 up

# Configure DHCP server (dnsmasq)
cat > /etc/dnsmasq.conf <<EOF
interface=wlan1
dhcp-range=10.10.10.100,10.10.10.150,12h
EOF

# Start dnsmasq service
systemctl start dnsmasq

# Configure hostapd
cat > /etc/hostapd/hostapd.conf <<EOF
interface=wlan1
driver=nl80211
ssid=$HOTSPOT_NAME
hw_mode=g
channel=7
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0
wpa=2
wpa_passphrase=$HOTSPOT_PASS
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
EOF

# Start hostapd service
systemctl start hostapd

# Enable IP forwarding and configure NAT
sysctl net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE

echo "WiFi hotspot setup complete."
