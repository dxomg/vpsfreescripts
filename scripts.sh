#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
echo "Making Sure that User is in root mode"
sleep 0.5
echo "Make sure you are in root mode"
echo "Press CTRl + C if you are not in root mode"

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A ROOT User" 1>&2
   exit 1
fi
# ...

echo "Is this your first time using this script on this vm?"
echo " [1] yes"
echo " [2] no"
sleep 0.5
read -p "Enter Input (y/n): " input
case $input in  
  2) echo "Updating Your tmp files"
apt update -y
apt upgrade -y
apt-get update -y
apt-get upgrade -y
apt install zip unzip -y
apt install figlet toilet -y
apt-get install git -y
clear
sleep 0.5
echo " TMP files are now loaded"
sleep 1
2)
figlet -c VPSFREE.ES
sleep 1
echo ""
echo "* VPSFREE.ES SCRIPTS"
echo "*"
echo "* Copyright (C) 2022 - 2023, VPSFREE.ES"

echo "*"
echo "*"
echo "*"
echo "###########################################################################################################"
echo "*                                                                                                         $"
echo "* [0] Install Minecraft Server Files                                                                      $"
echo "* [1] Comming Soon!                                                                                       $"
echo "* [2] Nuke Vps (If you messed up)                                                                         $"
echo "*                                                                                                         $"
read -p "Enter Input: " input
case $input in  
    0) bash <(curl -s https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/minecraftscript/install.sh);;
    1) echo "Comming Soon";;
    2) echo "Under Development";;
    *) echo "Unknown Identifier"
       exit;;
esac
esac
