if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
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
echo "* [1] Quitter"

read -p "Enter Input (0-1): " input


case $input in

    0)
    apt update
    apt install default-jre
    apt install screen
    apt update
    echo "##############################"
    echo ""
    echo "Java à été installé"
    echo ""
    echo "##############################"
    wget https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
    wget https://raw.githubusercontent.com/Loxstazz/script/main/start.sh
    mv spigot-1.8.8-R0.1-SNAPSHOT-latest.jar server.jar
    echo "##############################################################"
    echo ""
    echo "Installation terminé"
    echo "Vous pouvez modifier le fichier start.sh avec nano start.sh
    echo ""
    echo "##############################################################"
    1) echo "Fermeture" && exit;;
esac