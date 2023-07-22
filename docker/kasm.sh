
echo "This script requires Docker compose to be installed on your system"
echo "If docker compose is not installed on your system, run ./docker-install.sh"
echo ""

# Warning external script
./$home/$user/pi-scripts/misc/warning-external-scripts.sh

mkdir /$home/$user/kasm
cd 
cd kasm

wget https://raw.githubusercontent.com/kasmtech/workspaces-docker/RELEASE/2.8/production/arm/docker-compose.yml

docker-compose up -d
