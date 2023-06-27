# Building and Running Monero Ocean's xmrig in Termux

This script automates the process of downloading and compiling Monero Ocean's version of xmrig. It performs the following steps:

1. Updates and upgrades the system.
2. Downloads the xmrig source code from the Monero Ocean repository.
3. Extracts the downloaded source code.
4. Compiles xmrig with the necessary settings.
5. Copies the compiled xmrig binary to the home directory.
6. Creates a script called `xmrigmoneroocean.sh` in the home directory with the Monero Ocean configuration for running xmrig.
7. Sets executable permissions for the `xmrigmoneroocean.sh` script.
   
This will update your system, download the xmrig source code, compile it, and create the xmrigmoneroocean.sh script in your home directory.

Please make sure to review the Monero Ocean configuration parameters inside the xmrigmoneroocean.sh script and modify to match your desired mining settings.
