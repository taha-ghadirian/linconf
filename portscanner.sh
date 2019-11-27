#!/bin/bash
RED='\033[0;31m'
BLUE='\033[0;94m'
GREEN='\033[0;32m'
tPutRed=$(tput setaf 1)
tPutGreen=$(tput setaf 2)
tPutYellow=$(tput setaf 3)
tPutBlue=$(tput setaf 4)
tPutNoColor=$(tput setaf 9)
NoColor='\033[0m'

#Changing Sudo Command To Blue
echo -e "${BLUE}"
sudo apt-get
echo -e "${NoColor}"
clear

echo -e "${RED}Installing important apps ${NoColor}"
sleep 3
sudo apt-get install snapd vlc tmux neofetch git zsh
sleep 2
clear

echo -e "${RED}installing chromium...${NoColor}"
sudo snap install chromium
sleep 2
clear

text="${tPutBlue}Do you need to install ${tPutGreen}TorBrowser${tPutBlue}? ${tPutRed}([${tPutYellow}Y${tPutRed}],n) ${tPutBlue}:" 
read -p "$text ${tPutYellow}" yn
echo -e "${NoColor}"
if [ $yn == "y" ] || [ $yn == "Y" ] || [ $yn == "yes" ] || [ $yn == "Yes" ]
then
echo -e "${BLUE}Installing ${GREEN}Tor${BLUE}...${NoColor}"
sudo snap install tor
else
echo -e "${GREEN}Tor ${BLUE}Install ${RED}Aborted!${NoColor}"
fi
sleep 2
clear

echo -e "${BLUE}Installing ${tPutYellow}ohMyZsh${BLUE}...${NoColor}"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 2
clear

echo -e "${GREEN}Done!"
sleep 10
exit