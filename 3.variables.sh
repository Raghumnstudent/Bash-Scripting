#! /bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the variables,what is variable? and how it help in writing script
#Created date: Sunday 25 June 2023 11:29:51 PM IST
#Modified date:

Name="Raghu M N"
Age=24
Town=Malavalli
#wanted to execute command, store the result of command into variable using `` or $(). i always go with ``
date=`date`
#we can also pass the command in below format also $(command)
Hostname=$(hostname)
echo "I am $Name"
echo "My Age is $Age"
echo "Todays date is $date"
echo "My Town is $Town"
echo "My system hostname is $Hostname"
