clear
function pause(){
   read -p "$*"
}
# Thanks nixCraft for the above.
echo One-shot Discord + BetterDiscord script \for Debian systems\;
echo version 1.0 by there.is.only.xul.
echo
echo Made on Ubuntu MATE 16.04\;
echo Any variant of Ubuntu 16.04 or greater should be compatible with this script.
echo
echo this script is lazy and will just clone to wherever the script was executed.
echo If you wish to keep your directories tidy, quit and move this to your git repos.
echo
echo Discord is now official\! This means Linux users don\'t need to use Canary build
echo to use the service via desktop. If you would rather use Discord Canary, quit
echo and scroll to \"Installing Discord\" to \enable use of Discord Canary instead.
echo
echo Press \<Enter\> to continue.
echo Hold \<Ctrl\> and press C to quit.
pause ''
clear
echo \################
echo \# Sanity check \#
echo \################
sudo apt update
echo
echo \######################
echo \# installing Discord \#
echo \######################
# Delete old files
rm -rf $HOME/Downloads/discord-canary.deb $HOME/Downloads/discord.deb
### Old git location
rm -rf $HOME/git/betterdiscordapp
# Fetch Discord
### Official build
wget https://discordapp.com/api/download?platform=linux\&format=deb -O $HOME/Downloads/discord.deb && sudo dpkg -i $HOME/Downloads/discord.deb
### Canary build (disabled by default)
### ! Must disable above and enable alias at bottom of script to prevent errors
## wget https://discordapp.com/api/download/canary?platform=linux -O $HOME/Downloads/discord-canary.deb && sudo dpkg -i $HOME/Downloads/discord-canary.deb
### Necessary since for some reason installing Discord may cause the odd depend issue
sudo apt -f install -y
echo
echo \#################################
echo \# Installing requisite software \#
echo \#################################
echo --- Installing Git and Node Package Manager ---
echo
# Fetch and install
sudo apt install -y git npm
### Upgrading node
sudo npm install -g n
sudo n stable
echo
echo \##########################
echo \# Fetching BetterDiscord \#
echo \##########################
# This will clone where the script was ran.
git clone https://github.com/jiiks/betterdiscordapp ./betterdiscordapp
echo --- Preparing installer ---
cd ./betterdiscordapp/Installers/Electron
npm install
npm install --save-dev electron
echo
echo --- Doing other user-enhancing things... ---
mkdir -p $HOME/.config/betterdiscord
# Since script will be ran as sudo, this has to be done so permission issues are prevented.
# Method changed to giving read/write access to everyone.
sudo chmod -R 777 /var/local/BetterDiscord/
echo
echo --- Launching BetterDiscord Installer ---
echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo -e "+          THINGS YOU SHOULD KNOW BEFORE PROCEEDING          +"
echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo -e "+ Folders have been created for BetterDiscord user           +"
echo -e "+ preferences and installation of necessary files.           +"
echo -e "+------------------------------------------------------------+"
echo -e "+ Place BetterDiscord files in \"\$HOME/.config/betterdiscord\" +"
echo -e "+ Discord is located in \"/usr/share/discord\"                 +"
echo -e "+ If using Discord Canary: \"/usr/share/discord-canary\"       +"
echo -e "+------------------------------------------------------------+"
echo -e "+ When installation is finished, press \"Abort\";              +"
echo -e "+ When prompted, choose \"Yes\", since the installer lacks     +"
echo -e "+ a means to exit itself gracefully.                         +"
echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
sudo ./node_modules/.bin/electron ./src
echo
echo --- Finishing up ---
cd $HOME/.config/betterdiscord/BetterDiscordApp-stable16/lib
sudo ln -f -s utils.js Utils.js #Symlink as it's safer than renaming files.
echo
echo \#####################
echo \# Launching Discord \#
echo \#####################
cd $HOME
### Enable if using Canary build; it's just for compatibility. Use "discord-canary" after. 
## alias discord="discord-canary"
echo -e "Don't exit this script yet, wait for better discord to finish loading, and close Discord, than the script will finish setting up"
discord
ln -f -s ~/BetterDiscord/bdStorage.json ~/BetterDiscord/bdstorage.json #So it can read your saved settings despite BetterDiscord, mistakenly saving this file as bdstorage.json but trying to read as bdStorage.json at startup.
echo
echo --- Script end ---
exit
# EOF
