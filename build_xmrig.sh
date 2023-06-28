#!/bin/bash

# Update and upgrade system
apt-get update
apt-get upgrade -y

# Install wget
apt-get install -y wget

# Install cmake
apt-get install -y cmake

# Download and unzip xmrig
wget https://github.com/MoneroOcean/xmrig/archive/refs/heads/master.zip
unzip master.zip
cd xmrig-master

# Create build directory and compile xmrig
mkdir build
cd build
cmake -DWITH_HWLOC=OFF ..
make

# Copy xmrig binary to home directory
cp xmrig ~/xmrig

# Create xmrigmoneroocean.sh in home directory
echo '#!/bin/bash' > ~/xmrigmoneroocean.sh
echo 'cd ~/xmrig' >> ~/xmrigmoneroocean.sh
echo './xmrig -o gulf.moneroocean.stream:10032 -u 49EerUEecJxcFaJUGfEpyna91u5HU1ykHVJnP2BmnT4N3NpDd6qmdfPXzaFx6uRRzEiTMErpieeCiKwyhrbJ1JC29rtu66L -p x -t 3 --randomx-mode light' >> ~/xmrigmoneroocean.sh

# Make xmrigmoneroocean.sh executable
chmod +x ~/xmrigmoneroocean.sh
