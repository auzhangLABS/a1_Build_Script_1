#!/bin/sh

#This is a one-liner because I try to do it first within crontab
# This is also the shell script that I'll will be putting into the crontab.
#first, this script  does sudo apt update, which try to update all the package in my system. 
# From there, I pipe it into the tail function to see the last line after running the sudo apt update.
#after, that I was able to extract that data and put it in an update{today_date}.txt file within the /home/ubuntu directory.
sudo apt update | tail -n 1 > /home/ubuntu/update$(date +"%m.%d.%y").txt
#when this .sh file is called on by the crontab it will create a new txt file with the date every Friday (set by crontab)