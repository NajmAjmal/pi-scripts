docker volume create yacht && docker run -d --restart unless-stopped --name yacht -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v yacht:/config selfhostedpro/yacht
