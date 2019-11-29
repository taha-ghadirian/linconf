#!/bin/bash
RED=$(tput setaf 196)
BLUE=$(tput setaf 141)
GREEN=$(tput setaf 40)
tPutRed=$(tput setaf 196)
tPutGreen=$(tput setaf 40)
tPutYellow=$(tput setaf 226)
tPutBlue=$(tput setaf 141)
tPutNoColor=$(tput setaf 9)
NoColor='\033[0m'

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
clear
clear

echo -e "installing telegram.."
sudo snap install telegram-desktop
sleep 2
clear

text="Do you need to install programing software: "
read -p "$text" yn
echo -e "${NoColor}"
if [ $yn == "y" ] || [ $yn == "Y" ] || [ $yn == "yes" ] || [ $yn == "Yes" ]

then

echo -e "Installing porgram apps.."
sleep 3

name="do you want to install software for web programming: "
read -p "$name" yn
echo -e "${NoColor}"
if [ $yn == "y"] || [$yn == "yes"] || [ $yn == "Y"] || [ $yn == "Yes"]
then

clear
sleep 3
echo -e "Installing porgram for web.."
sleep 2
clear
echo -e "installing node js.."
sleep 2
apt install nodejs npm
clear

echo -e "Installing phpstorm.."
sleep 2
sudo snap install phpstorm --classic
clear

echo -e "Installing webstorm.."
sudo snap install webstorm --classic
clear
sleep 2

echo -e "Install the software for web programming finish.."
sleep 2

else
echo -e "Insalling prg for web aborted"
fi

else

echo -e "installing prg apps aborted"
fi


echo -e "${GREEN}Done!"
sleep 5
neofetch
