# Building and Running Monero Ocean's xmrig in Termux

This script automates the process of downloading and compiling Monero Ocean's version of xmrig. It performs the following steps:

1. Updates and upgrades the system.
2. Installs the `wget` package for downloading files.
3. Downloads the xmrig source code from the Monero Ocean repository.
4. Extracts the downloaded source code.
5. Compiles xmrig with the necessary settings.
6. Copies the compiled xmrig binary to the home directory.
7. Creates a script called `xmrigmoneroocean.sh` in the home directory with the Monero Ocean configuration for running xmrig.
8. Sets executable permissions for the `xmrigmoneroocean.sh` script.

This will update your Termux, download the xmrig source code, compile it, and create the xmrigmoneroocean.sh script in your home directory.

## Customizing the Script

⚠️ **IMPORTANT: Default Values**

The script includes default values for the username, password, and number of mining threads. These default values are set by the script creator and may represent their own configurations. It's highly recommended to replace the default values with your own before running the script.

To customize the script, follow these steps:

1. Download the script or open it in a text editor.
2. Look for the prompts that ask for your username, password, and number of mining threads.
3. Enter your desired values when prompted or leave the input blank to keep the default values.
4. Save the changes to the script.
5. Execute the script and it will use the provided values or defaults.

**Note:** Before engaging in cryptocurrency mining, please ensure that you have proper authorization and comply with all applicable laws and regulations.

## Usage

1. Open the Termux app on your Android device.
2. Install git by running the command: `pkg install git`.
3. Clone the repository by running: `git clone https://github.com/Bitofsin/Termux-MoneroOcean-script.git`.
4. Change to the cloned directory: `cd Termux-MoneroOcean-script`.
5. Make the script executable: `chmod +x xmrig_setup.sh`.
6. Run the script: `./xmrig_setup.sh`.
7. Follow the prompts to enter your desired username, password, and number of mining threads.
8. Once the script finishes executing, you can start mining by running `~/xmrigmoneroocean.sh`.

Please ensure you have the necessary authorization and comply with all applicable laws and regulations before engaging in cryptocurrency mining.

