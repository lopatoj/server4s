#!/bin/bash

# Go to home directory
cd ~

# Install Java
sudo apt update
sudo apt upgrade
sudo apt install openjdk-19-jre

# Download server.jar
wget -O server.jar https://download.getbukkit.org/craftbukkit/craftbukkit-1.20.2.jar

# Agree to eula
echo "eula=true" > eula.txt

# Download plugins
mkdir plugins
wget -O plugins/essentialsX.jar https://cdn.modrinth.com/data/hXiIvTyT/versions/puUfqBpY/EssentialsX-2.20.1.jar 
wget -O plugins/worldedit.jar https://dev.bukkit.org/projects/worldedit/files/4793142/download


# Download server.properties
wget -O server.properties https://raw.githubusercontent.com/lopatoj/server4s/main/server.properties

# Run server
cd ~
java -jar server.jar