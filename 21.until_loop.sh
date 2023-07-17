#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the until loop
#Created date: Monday 17 July 2023 09:00:27 AM IST
#Modified date:

#checking host is up or not 

read -p "Enter the ip to check: " ip

until ping -c 3 $ip
do
      echo "Host $ip is not up"
      #go to sleep for 3 seconds
      sleep 3
done

echo "Host $ip is up"
