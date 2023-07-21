sudo docker pull nextcloud
sudo docker volume create nextcloud_data
sudo docker run -d --restart always --name nextcloud -p 8080:80 -v nextcloud_data:/var/www/html nextcloud

echo "Nextcloud has been installed"
echo "View WebUI: localhost:8080"
