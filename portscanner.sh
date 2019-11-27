#!/bin/bash

echo "Installing important apps"
sleep 2
sudo apt-get update
sudo apt-get install snapd vlc tmux neofetch git zsh

sleep 2
echo "installing chromium.."
sudo snap install chromium
sleep 2
clear

echo "installing tor-browser.."
sleep 2
sudo snap install tor