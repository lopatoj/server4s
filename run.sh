#!/bin/bash

# Install Java
sudo apt update
sudo apt upgrade
sudo apt install openjdk-19-jre

# Download server.jar
wget https://download.getbukkit.org/craftbukkit/craftbukkit-1.20.2.jar
mv craftbukkit-1.20.2.jar server.jar

# Agree to eula
echo "eula=true" > eula.txt

# Download plugins
mkdir plugins
cd plugins
wget -0 essentialsX.jar https://cdn.modrinth.com/data/hXiIvTyT/versions/puUfqBpY/EssentialsX-2.20.1.jar 
wget -0 worldedit.jar https://dev.bukkit.org/projects/worldedit/files/4793142/download
cd ..

# Download server.properties
wget -0 server.properties https://raw.githubusercontent.com/lopatoj/server4s/main/server.properties

# Run server
java -jar server.jar