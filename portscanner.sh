#!/bin/bash

echo "Installing important apps"
sleep 2
sudo apt-get update
sudo apt-get install snapd vlc tmux neofetch git zsh
sleep 2
clear

echo "installing chromium..."
sudo snap install chromium
sleep 2
clear

echo "installing tor-browser..."
sudo snap install tor
sleep 2
clear

echo "Installing ohMyZsh..."
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 2
clear

echo "Done"
sleep 10
exit