if [ "$(id -u)" != "0" ]; then
   echo "Veuillez exécuter ce script avec des privilèges root" 1>&2
   exit 1
fi

apt install sudo -y


echo "#######################################################################################"
echo "#"
echo "#                                  FireTryx_YT Script"
echo "#"
echo "#                           Copyright (C) 2022 - 2023, FIRETRYX"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [0] Installer Minecraft Spigot 1.8.8"
echo "* [1] Installer Minecraft Spigot Latest"
echo "* [2] Installer Minecraft Forge Server 1.12.2"
echo "* [3] Installer Minecraft Java Vanilla Latest"
echo "* [4] Quitter"

read -p "Enter Input (0-1): " input


case $input in

    0)
    apt update
    apt install default-jre screen -y
    apt update
    echo "##############################"
    echo ""
    echo "Java à été installé"
    echo ""
    echo "##############################"
    wget https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
    mv spigot-1.8.8-R0.1-SNAPSHOT-latest.jar server.jar
    wget https://raw.githubusercontent.com/Loxstazz/script/main/eula.txt
    wget https://raw.githubusercontent.com/Loxstazz/script/main/start.sh
    chmod +x start.sh
    echo "##############################################################"
    echo ""
    echo "Installation terminé"
    echo "Utiliser ./start.sh pour démarrer le serveur"
    echo ""
    echo "##############################################################";;
    
    1)
    apt update
    apt install default-jre screen -y
    apt update
    echo "##############################"
    echo ""
    echo "Java à été installé"
    echo ""
    echo "##############################"
    wget https://download.getbukkit.org/spigot/spigot-1.19.3.jar
    mv spigot-1.19.3.jar server.jar
    wget https://raw.githubusercontent.com/Loxstazz/script/main/eula.txt
    wget https://raw.githubusercontent.com/Loxstazz/script/main/start.sh
    chmod +x start.sh
    echo "##############################################################"
    echo ""
    echo "Installation terminé"
    echo "Utiliser ./start.sh pour démarrer le serveur"
    echo ""
    echo "##############################################################";;
    
    2)
    apt update
    apt install default-jre screen -y
    apt update
    echo "##############################"
    echo ""
    echo "Java à été installé"
    echo ""
    echo "##############################"
    wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2860/forge-1.12.2-14.23.5.2860-installer.jar
    mv forge-1.12.2-14.23.5.2860-installer.jar server.jar
    wget https://raw.githubusercontent.com/Loxstazz/script/main/start.sh
    chmod +x start.sh
    wget https://raw.githubusercontent.com/Loxstazz/script/main/eula.txt
    java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
    echo "##############################################################"
    echo ""
    echo "Installation terminé"
    echo "Utiliser ./start.sh pour démarrer le serveur"
    echo ""
    echo "##############################################################";;
    
    3)
    apt update
    apt install default-jre screen -y
    apt update
    echo "##############################"
    echo ""
    echo "Java à été installé"
    echo ""
    echo "##############################"
    wget https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar
    wget https://raw.githubusercontent.com/Loxstazz/script/main/start.sh
    chmod +x start.sh
    wget https://raw.githubusercontent.com/Loxstazz/script/main/eula.txt
    echo "##############################################################"
    echo ""
    echo "Installation terminé"
    echo "Utiliser ./start.sh pour démarrer le serveur"
    echo ""
    echo "##############################################################";;
    
    4)
    echo "Fermeture du Script" && exit;;
esac
