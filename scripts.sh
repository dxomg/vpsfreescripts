#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
echo "Making Sure that User is in root mode"
sleep 
echo "Make sure you are in root mode"
echo "Press CTRl + C if you are not in root mode"
sleep 1
echo "Starting Script in 5 seconds"
sleep 1 
echo "Starting Script in 4 seconds"
sleep 1 
echo "Starting Script in 3 seconds"
sleep 1 
echo "Starting Script in 2 seconds"
sleep 1 
echo "Starting Script in 1 seconds"
sleep 1 
echo "Script is running and the files are ready"
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A ROOT User" 1>&2
   exit 1
fi
# ...
apt update -y
apt upgrade -y
apt-get update -y
apt-get upgrade -y
apt install zip unzip -y
apt install figlet toilet -y
apt-get install git -y
sleep 1
figlet -c VPSFREE.ES
sleep 1
echo ""
echo "* VPSFREE.ES SCRIPTS"
echo "*"
echo "* Copyright (C) 2022 - 2023, VPSFREE.ES"

echo "*"
echo "*"
echo "*"
echo "#######################################################################################"
echo "*                                                                                                         "
echo "* [0] Install Minecraft Server Files                                                                      "
echo "* [1] Install PufferPanel                                                                                       "
echo "* [2] Install Basic Packages
                         "
echo "* [3] Install Npm project in current directory"
echo "* [4] Exit"
echo "*                                                                                            "
read -p "Enter Input (1-4) :" input
case $input in  
    0) bash <(curl -s );;
    1) apt update && apt install curl -y
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
sudo apt-get install pufferpanel
sudo systemctl enable pufferpanel
sudo pufferpanel user add
sudo systemctl enable --now pufferpanel;;
   3) apt install npm
      echo "Project Name :"
       read -p "Project Name :" fld
       mkdir $fld
       cd $fld
       npm init -y;;
  2) apt install npm
     apt install git
     apt install neofetch;;
  4) echo Shutting Down VpsFreeScripts....
    exit;;
   esac
