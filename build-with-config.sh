#!/bin/bash

# This script automates the process of downloading and compiling Monero Ocean's version of xmrig.

# Update and upgrade system
sudo apt-get update
sudo apt-get upgrade -y

# Install wget
sudo apt-get install -y wget

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
cp xmrig ~

# Create config.json file in home directory
echo '{
  "api": {
    "id": null,
    "worker-id": null
  },
  "http": {
    "enabled": false,
    "host": "127.0.0.1",
    "port": 0,
    "access-token": null,
    "restricted": true
  },
  "autosave": true,
  "background": false,
  "colors": true,
  "title": true,
  "randomx": {
    "init": -1,
    "init-avx2": -1,
    "mode": "auto",
    "1gb-pages": false,
    "rdmsr": true,
    "wrmsr": true,
    "cache_qos": false,
    "numa": false,
    "scratchpad_prefetch_mode": 1
  },
  "cpu": {
    "enabled": true,
    "huge-pages": true,
    "huge-pages-jit": false,
    "hw-aes": null,
    "priority": null,
    "memory-pool": false,
    "yield": true,
    "max-threads-hint": 100,
    "asm": true,
    "argon2-impl": null,
    "cn/0": false,
    "cn-lite/0": false
  },
  "donate-level": 0,
  "donate-over-proxy": 0,
  "log-file": null,
  "pools": [
    {
      "algo": null,
      "coin": null,
      "url": "gulf.moneroocean.stream:10032",
      "user": "49EerUEecJxcFaJUGfEpyna91u5HU1ykHVJnP2BmnT4N3NpDd6qmdfPXzaFx6uRRzEiTMErpieeCiKwyhrbJ1JC29rtu66L",
      "pass": "x",
      "rig-id": null,
      "nicehash": false,
      "keepalive": false,
      "enabled": true,
      "tls": false,
      "tls-fingerprint": null,
      "daemon": false,
      "socks5": null,
      "self-select": null,
      "submit-to-origin": false
    }
  ],
  "print-time": 60,
  "health-print-time": 60,
  "dmi": true,
  "retries": 5,
  "retry-pause": 5,
  "syslog": false,
  "tls": {
    "enabled": false,
    "protocols": null,
    "cert": null,
    "cert_key": null,
    "ciphers": null,
    "ciphersuites": null,
    "dhparam": null  },
  "dns": {
    "ipv6": false,
    "ttl": 30
  },
  "user-agent": null,
  "verbose": 0,
  "watch": true,
  "pause-on-battery": false,
  "pause-on-active": false,
}' > ~/config.json

# Create xmrigmoneroocean.sh in home directory
echo '#!/bin/bash' > ~/xmrigmoneroocean.sh
echo 'cd ~' >> ~/xmrigmoneroocean.sh
echo './xmrig -c ~/config.json' >> ~/xmrigmoneroocean.sh

# Make xmrigmoneroocean.sh executable
chmod +x ~/xmrigmoneroocean.sh
