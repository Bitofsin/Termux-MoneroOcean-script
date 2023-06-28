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

# Prompt for username
read -p "Enter your username (Leave blank to keep default): " username
if [[ -z $username ]]; then
  username="49EerUEecJxcFaJUGfEpyna91u5HU1ykHVJnP2BmnT4N3NpDd6qmdfPXzaFx6uRRzEiTMErpieeCiKwyhrbJ1JC29rtu66L"
fi

# Prompt for password
read -p "Enter your password (Leave blank to keep default): " password
if [[ -z $password ]]; then
  password="x"
fi

# Prompt for number of mining threads
read -p "Enter the number of mining threads (Leave blank to keep default - 3): " mining_threads
if [[ -z $mining_threads ]]; then
  mining_threads="3"
fi

# Create xmrigmoneroocean.sh in home directory
echo '#!/bin/bash' > ~/xmrigmoneroocean.sh
echo 'cd ~/xmrig' >> ~/xmrigmoneroocean.sh
echo "./xmrig -o gulf.moneroocean.stream:10032 -u $username -p $password -t $mining_threads --randomx-mode light" >> ~/xmrigmoneroocean.sh

# Make xmrigmoneroocean.sh executable
chmod +x ~/xmrigmoneroocean.sh
