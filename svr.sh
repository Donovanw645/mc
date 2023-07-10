#!/bin/bash
sleep 1
echo "Starting minecraft server quick setup."
sleep 1
echo "Starting server with 2G of memory. Edit this file at (/home/[user]/minecraft) to change memory size"
echo "You will have to accept the eula.txt by running [nano eula.txt] and changing eula=false to eula=true]"
sleep 3
java -Xms2G -Xmx2G -jar server.jar nogui
