sudo docker volume create yacht
sudo docker run -d --restart always --name yacht -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v yacht:/config selfhostedpro/yacht

echo "Yacht has been installed"
echo "View WebUI: localhost:8000"

echo ""

echo "Add these templates:"
echo ""
echo "https://yangkghjh.github.io/selfhosted_store/unraid/templates/yacht/yacht.json"
