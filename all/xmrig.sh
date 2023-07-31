echo "Installing XMRig"

# Define the content to be written to the file
contents="./xmrig/build/xmrig -o gulf.moneroocean.stream:80 -u 4657q4dnsjLWtzeW4XN3wG9swFumWAZB9i1pegTLMxVAQy5E5AE8uif42kkHWcWc9vDcLUmzeCf3pV7mmrJQQqqe84dtASi -p Raspberry-Pi"


./update.sh

echo "Installing Dependency"
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

echo "Main directory"
cd /$home/$user
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
cd /$home/$user

# Write the content to the file
echo "$contents" > mine.sh
chmod +x mine.sh

echo "To run miner, do ./mine.sh"
echo "Edit it by nano mine.sh, put your own address in"

./mine.sh
