#!/bin/bash
mkdir dir1
cd dir1
touch txt1.txt
touch txt2.txt
mv txt1.txt ~/txt1.txt
mv txt2.txt txt2.sh
echo "pwd" >> txt2.sh
echo "sudo apt-get install -f yum" >> txt2.sh
bash txt2.sh
