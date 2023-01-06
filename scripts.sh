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


echo "Updating Your tmp files"
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
echo "* [1] Run ExeCall Script                                                                                  $"
echo "* [2] Run NameServer Script                                                                               $"
echo "* [3] Comming Soon!                                                                                $"
echo "* [4] Nuke Vps (If you messed up)                                                                         $"
echo "*                                                                                                         $"
