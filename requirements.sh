#!/bin/bash
sleep 1
echo "This script will install all the dependencies for a minecraft server to run."
sleep 1
echo "This script will also start the server when it is finished installing all necesary depencies, if you do not want to start the server afterwards, type a (#) below or nothing if you want the server to start automaticly"
sleep 1
read $start
sleep 1
echo "installing dependencies"
echo "0%"
sleep 1
sudo add-apt-repository ppa:openjdk-r/ppa
sleep 1
echo "20%"
sudo apt update
sleep 1
echo "40%"
sudo apt install openjdk-17-jre-headless
sleep 1
echo "60%"
sudo apt install screen
sleep 1
echo "downloading the server jarfile"
wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar
sleep 1
echo "80%"
sudo ufw allow 25565
sleep 1
echo "100%"
sleep 1
echo "All dependencies should be installed. The script will now exit OR start svr.sh to setup your server."
$start sudo bash svr.sh
