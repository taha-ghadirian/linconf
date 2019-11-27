#!/bin/bash

echo "installing inportant apps"
sleep 2
sudo apt-get install snapd
sleep 1
clear
sleep 2
echo "installing chromium.."
sudo snap install chromium
sleep 2
clear

echo "installing tor-browser.."
sleep 2
sudo snap install tor

