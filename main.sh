if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

echo "#######################################################################################"
echo ""
echo "* VPSFREE.ES SCRIPTS"
echo "*"
echo "* Copyright (C) 2022 - 2023, VPSFREE.ES"
echo "*"
echo "*"
echo "#######################################################################################"
echo "*"
echo "* [0] Install Minecraft Server Files"
echo "* [1] Install PufferPanel"
echo "* [2] Install WebPage"
echo "* [3] Install Basic Packages"
echo "* [4] Exit"

read -p "Enter Input (1-3): " input

case $input in

    0)
    apt update && wget https://github.com/dxomg/vpsfreescripts/raw/main/vpsfreescripts/minecraftscript/install.sh && bash install.sh;;
    1)
    apt update && apt install curl -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
    sudo apt-get install pufferpanel
    sudo systemctl enable pufferpanel
    sudo pufferpanel user add
    sudo systemctl enable --now pufferpanel;;
    2)
    bash <(curl -s https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/websitescript/install.sh);;
    3)
    apt install git
    apt install neofetch
    echo "##############################"
    echo ""
    echo "Installed git and neofetch"
    echo ""
    echo "##############################";;
    4) echo "Exit" && exit;;
esac
