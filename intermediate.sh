#!/usr/games/scripts/bash
#Creating the file
echo "Creating file: $1"
sudo touch $1

#Changing permissions
echo "Making file executable by all"
sudo chmod -R 755 $1

#Changing ownership
echo "Ownser set to root"
sudo chown root $1
