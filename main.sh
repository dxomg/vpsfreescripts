if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

echo "#######################################################################################"
echo "#"
echo "#                                  VPSFREE.ES SCRIPTS"
echo "#"
echo "#                           Copyright (C) 2022 - 2023, VPSFREE.ES"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [0] Install Minecraft Server Files"
echo "* [1] Install Warp to enable Ipv4 on Ipv6 only"
echo "* [2] Install PufferPanel"
echo "* [3] Install WebPage"
echo "* [4] Install Basic Packages"
echo "* [5] Exit"

read -p "Enter Input (0-5): " input

case $input in

    0)
    apt update && wget https://github.com/dxomg/vpsfreescripts/raw/main/vpsfreescripts/minecraftscript/install.sh && bash install.sh;;
    1)
    curl -s https://github.com/dxomg/vpsfreescripts/raw/main/vpsfreescripts/warpv6/install.sh | bash;;
    2)
    apt update && apt install curl -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
    sudo apt-get install pufferpanel
    sudo systemctl enable pufferpanel
    sudo pufferpanel user add
    sudo systemctl enable --now pufferpanel;;
    3)
    bash <(curl -s https://raw.githubusercontent.com/dxomg/vpsfreescripts/main/vpsfreescripts/websitescript/install.sh);;
    4)
    apt install git
    apt install neofetch
    echo "##############################"
    echo ""
    echo "Installed git and neofetch"
    echo ""
    echo "##############################";;
    5) echo "Exit" && exit;;
esac
