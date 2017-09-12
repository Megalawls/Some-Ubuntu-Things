#!/usr/games/scripts/bash
echo "Adding execute permissions to all files and folders within: $1"
sudo chmod -R 755 $1
