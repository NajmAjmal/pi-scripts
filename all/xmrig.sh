echo "Installing XMRig"

./update.sh

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
