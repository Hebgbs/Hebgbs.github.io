clear
function pause(){
   read -p "$*"
}
# Thanks nixCraft for the above.
echo Discord + BetterDiscord installer script \for Debian systems\;
echo version 2.0 by hebgbs.
echo
echo This bash script is intended \for Ubuntu \/ Debian systems.
echo For other systems, edit the below as necessary \for porting.
echo 
echo Linux users don\'t need to use Canary build, but \if you want to,
echo scroll to \"Installing Discord\" to \enable use of Discord Canary instead.
echo
echo Press \<Enter\> to continue.
echo Hold \<Ctrl\> and press C to quit.
pause ''
clear
echo This script relies upon symlinks\; execute \in an Ext4 partition.
echo
echo Place this script \in your Git repository directory \if you care
echo that much about how tidy your tree is.
echo
# FIXME: This functionality is broken. Instructions for resolution unclear; I fsck'd my toaster.
#echo If you \do not want Zerebos\' enhancements \for BetterDiscord,
#echo open this script \and comment lines 74-78 \(Too lazy to add a choice\).
#echo
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
git clone https://github.com/rauenzi/BetterDiscordApp.git ./BetterDiscordApp
### If Zerebos becomes unhinged and deletes his repo, comment out his and use Jiiks' instead.
# git clone https://github.com/jiiks/betterdiscordapp ./BetterDiscordApp
echo --- Preparing installer ---
cd $PWD/BetterDiscordApp/Installers/Electron
npm install
npm install --save-dev electron
echo
echo --- Launching BetterDiscord installer ---
echo \|\|\ This script will \continue after execution of the installer.
echo.
sudo ./node_modules/.bin/electron ./src
#echo --- Adding \in Zerebos\' enhancements ---
#sudo rm -rf /usr/local/share/BetterDiscord/BetterDiscordApp-stable16/libBetterDiscord.js /usr/local/share/BetterDiscord/BetterDiscordApp-stable16/libconfig.json
#sudo ln -s $PWD/BetterDiscordApp/lib/BetterDIscord.js /usr/local/share/BetterDiscord/BetterDiscordApp-stable16/lib/BetterDiscord.js
#sudo ln -s $PWD/BetterDiscordApp/lib/config.json /usr/local/share/BetterDiscord/BetterDiscordApp-stable16/lib/config.json
echo
echo --- Finishing up ---
mkdir $HOME/BetterDiscord
sudo ln -s $HOME/BetterDiscord /var/local/BetterDiscord
cd /var/local/BetterDiscord
touch bdstorage.json
sudo ln -s bdstorage.json bdStorage.json
cd $HOME/.config/betterdiscord/BetterDiscordApp-stable16/lib
sudo ln -s Utils.js utils.js
echo
echo \#####################
echo \# Launching Discord \#
echo \#####################
cd $HOME
### Enable if using Canary build; it's just for compatibility. Use "discord-canary" after. 
# alias discord="discord-canary"
discord &
clear
echo \#################
echo \# Event summary \#
echo \#################
echo The following actions have been \done\;
echo \* Download git and npm \(\if necessary\)
echo \* Download and \install Discord
#echo \* Download Zerebos\' fork \of BetterDiscord
echo \* Download requisite software \for the BetterDiscord installer
echo \* Execute the BetterDiscord installer
echo \* Make a symbolic link \for BetterDiscord user files
echo \ \ \> BetterDiscord expects \/var\/local\/BetterDiscord
echo \* Correct typographical errors of certain files using symbolic links
echo
echo Your user-configurable files should be \in ~\/BetterDiscord
echo
echo Enjoy an enhanced Discord experience.
echo Press [Enter] to exit.
pause ''
echo --- Script end ---
exit
# EOF