./update.sh

sudo apt install default-jdk

mkdir $user/$home/mcserver
cd $user/$home/mcserver

wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar

java -Xmx2048M -Xms2048M -jar server.jar nogui

echo "Copy this paste into nano"
echo "CTRL+X Y ENTER"
echo ""
echo "#!/bin/bash
cd ~/mcserver
while true
do
   java -Xmx1024M -Xms1024M -jar server.jar
   sleep 10
done"

sleep 10

nano start.sh

echo "Edit EULA"
echo "Set to true"

sleep 5
