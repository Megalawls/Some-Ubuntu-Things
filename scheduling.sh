#!/bin/bash
echo "Message will apprear in five seconds"
sleep 5; echo "It has been five seconds since calling this script"

echo "Listing verbosely everyhthing in this directory in 5 seconds"
sleep 5; sudo ls -l

#The below were added to the chrontab file for the other exercises
#* 0 * * * root pkill nano
#Kills nano at midnight every day

#*/5 6-7 * 1,11,12 0,6 root sudo reboot
#Reboots the machine every 5 minutes between 6 and 7 am 
#During weekends in winter months

#Added the below to the anacrontab file
#1	15	cron.daily	echo	"Anacron works"
#Not sure if this works, as it seems to be daily, and I dont know how to force it to try
