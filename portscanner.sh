#!/bin/bash

echo "Installing important apps"
sleep 5
sudo apt-get update
sudo apt-get install snapd vlc tmux neofetch git zsh
sleep 2
clear

echo "installing chromium..."
sudo snap install chromium
sleep 2
clear

read -p "Do you need to install TorBrowser? ([Y],n): " yn
if [ $yn == "y" ] || [ $yn == "Y" ] || [ $yn == "yes" ] || [ $yn == "Yes" ]
then
echo "Installing Tor..."
sudo snap install tor
else
echo "Tor Install Aborted!"
fi
sleep 2
clear

echo "Installing ohMyZsh..."
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 2
clear

echo "Done"
sleep 10
exit