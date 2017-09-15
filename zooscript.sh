#!/bin/bash
echo "Zooscript Initialised"

#read name
#echo "Hello $name"
echo "Which animal folder would you like to go into?"
read folder

cd ~/Desktop/shells/zoo/$folder
pwd

fextension="facts.txt"
#Creates $folderfacts if it doesnt exist
if [[ ! -f ${folder}$fextension ]]; then
	touch ${folder}$fextension
	echo "${folder}$fextension created"
fi

#Prints all of the animals within folder, ammended to redirect
for i in $(ls)
do
	cat $i >> ${folder}$fextension
done

#Code below is used for task f instead of the above, using grep to only get birthday
#cat $i | grep "birthday"
#Code below adds line numbers and converts to lower case
#cat -n ./zoo/birds/birdsfacts.txt | tr A-Z a-z
