echo "Installing Dependencies..."
sleep 1
apt update
apt install curl -y
curl -s https://deb.nodesource.com/setup_16.x | sudo bash
apt install nodejs -y
npm install pm2 -g
pm2 startup
wget -O playit https://raw.githubusercontent.com/dxomg/plygg/main/playit-0.9.3
chmod 755 playit
echo "Available minecraft versions:"
echo "1 -> 1.18.2"
echo "2 -> 1.16.5"
echo "3 -> 1.12.2"
echo "4 -> 1.8.8"
echo ""
read -p "Enter minecraft version: " minecraftv

if [ "$minecraftv" = 1 ]  ; then
    echo "Selected: ${minecraftv} > 1.18.2"
    mkdir mcserver
    cd mcserver
    wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.18.2/builds/388/downloads/paper-1.18.2-388.jar
    echo "eula=true" > eula.txt
    apt install openjdk-17-jre-headless -y
    pm2 start "java -jar server.jar"
    echo "Server is up and running!"
    echo "to check the logs do:"
    echo "pm2 logs 1"
    echo ""
    echo "to attach to the console do:"
    echo "pm2 attach 1"
    echo ""
    echo "For more commands please check the help for pm2"
fi

elif [ "$minecraftv" = 2 ]  ; then
    echo "Selected: ${minecraftv} > 1.16.5"
    mkdir mcserver
    cd mcserver
    wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar
    echo "eula=true" > eula.txt
    apt install openjdk-17-jre-headless -y
    pm2 start "java -jar server.jar"
    echo "Server is up and running!"
    echo "to check the logs do:"
    echo "pm2 logs 1"
    echo ""
    echo "to attach to the console do:"
    echo "pm2 attach 1"
    echo ""
    echo "For more commands please check the help for pm2"
fi

elif [ "$minecraftv" = 3 ]  ; then
    echo "Selected: ${minecraftv} > 1.12.2"
    mkdir mcserver
    cd mcserver
    wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar
    echo "eula=true" > eula.txt
    apt install openjdk-8-jdk-headless -y
    pm2 start "java -jar server.jar"
    echo "Server is up and running!"
    echo "to check the logs do:"
    echo "pm2 logs 1"
    echo ""
    echo "to attach to the console do:"
    echo "pm2 attach 1"
    echo ""
    echo "For more commands please check the help for pm2"
fi

elif [ "$minecraftv" = 4 ]  ; then
    echo "Selected: ${minecraftv} > 1.8.8"
    mkdir mcserver
    cd mcserver
    wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar
    echo "eula=true" > eula.txt
    apt install openjdk-8-jdk-headless -y
    pm2 start "java -jar server.jar"
    echo "Server is up and running!"
    echo "to check the logs do:"
    echo "pm2 logs 1"
    echo ""
    echo "to attach to the console do:"
    echo "pm2 attach 1"
    echo ""
    echo "For more commands please check the help for pm2"
fi

echo "__________________________________________________________"
echo ""
echo ""
echo "Please make an account at https://playit.gg"
echo "Playit will ask you to log in in 5 seconds, please follow what it says"
echo "When you're done press Ctrl + C and it should be done"
echo ""
echo "__________________________________________________________"
sleep 5
pm2 start "./playit"
pm2 save
pm2 logs 0
