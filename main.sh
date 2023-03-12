if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

apt install sudo -y
# color codes
RESTORE='\033[0m'

RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
PURPLE='\033[00;35m'
CYAN='\033[00;36m'
LIGHTGRAY='\033[00;37m'

LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'

echo "#######################################################################################"
echo "#"
echo "#                             $RED     VPSFREE.ES SCRIPTS" 
echo "#"
echo "#                       $BLUE    Copyright (C) 2022 - 2023, VPSFREE.ES"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* $GREEN [0] Install Minecraft Server Files"
echo "* $GREEN [1] Install Warp to enable Ipv4 on Ipv6 only"
echo "* $GREEN [2] Download Playit files to make tunnels to V4 & V6"
echo "* $GREEN [3] Install PufferPanel"
echo "* $GREEN [4] Launch Website"
echo "* $GREEN [5] Subdomain Scanner"
echo "* $GREEN [6] Install CRDP/XRDP"
echo "* $GREEN [7] Install Basic Packages"
echo "* $GREEN [8] Install Pterodactyl Panel"
echo "* $RED [9] Exit"

read -p "$LBLUE Enter Input (0-9): " input

case $input in

    0)
    apt update
    bash <(curl -s https://github.com/dxomg/vpsfreescripts/raw/main/vpsfreescripts/minecraftscript/install.sh)
    1)
    apt update
    apt install curl -y
    bash <(curl -s https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/warpv6/install.sh);;
    2)
    apt update
    mkdir playit && cd playit
    wget https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/playit-0.9.3
    mv playit-0.9.3 playit
    chmod 755 playit
    echo "PLAYIT INSTALLATION COMPLETE! proceeding in 3s"
    sleep 3
    ./playit;;
    3)
    apt update && apt install curl -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
    sudo apt-get install pufferpanel
    sudo systemctl enable pufferpanel
    sudo pufferpanel user add
    sudo systemctl enable --now pufferpanel;;
    4)
    bash <(curl -s https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/websitescript/install.sh);;
    5) apt install php
    bash <(curl -s https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/webtools/subdomain-scan.sh);;
    6)
    bash <(curl -s https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/crdpscript/install.sh);;
    7)
    apt install git neofetch sudo wget zip curl nodejs python
    echo "##############################"
    echo ""
    echo "Installed resources"
    echo ""
    echo "##############################";;
    8)
    bash <(curl -s https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/ptero/install.sh);;
    9) echo "Exit" && exit;;
esac
