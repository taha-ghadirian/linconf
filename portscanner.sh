#!/bin/bash
RED=$(tput setaf 196)
BLUE=$(tput setaf 141)
GREEN=$(tput setaf 40)
YELLOW=$(tput setaf 226)
NoColor=$(tput setaf 300)

#Changing Sudo Command To Blue
echo -e "${BLUE}"
sudo apt-get
echo -e "${NoColor}"
clear

echo -e "${BLUE}Installing important apps... ${NoColor}"
sleep 3
sudo apt-get install snapd vlc tmux neofetch git zsh | grep "000000"
sleep 2
clear

echo -e "${BLUE}installing ${RED}chromium${BLUE}...${NoColor}"
sudo snap install chromium
sleep 2
clear

text="${BLUE}Do you need to install ${GREEN}TorBrowser${BLUE}? ${RED}([${YELLOW}Y${RED}],n) ${BLUE}:" 
read -p "$text ${YELLOW}" yn
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

echo -e "${BLUE}Installing ${YELLOW}ohMyZsh${BLUE}...${NoColor}"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 2
clear
clear
clear

echo -e "${BLUE}installing ${RED}telegram${BLUE}...${NoColor}"
sudo snap install telegram-desktop
sleep 2
clear

text="${BLUE}Do you need to install ${YELLOW}Programming${BLUE} apps? ${RED}([${YELLOW}Y${RED}],n) ${BLUE}:"
read -p "$text ${YELLOW}" yn
echo -e "${NoColor}"
if [ $yn == "y" ] || [ $yn == "Y" ] || [ $yn == "yes" ] || [ $yn == "Yes" ]
then
echo -e "${BLUE}Installing ${YELLOW}porgramming ${BLUE}apps...${NoColor}"
sleep 3

echo -e "${BLUE}installing ${GREEN}NodeJs${BLUE}...${NoColor}"
sudo apt install nodejs npm

sleep 5
clear

else
echo -e "${RED}installing programming apps aborted!${NoColor}"
fi


echo -e "${GREEN}Done!${NoColor}"
sleep 5
neofetch
