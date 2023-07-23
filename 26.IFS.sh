#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the Internal Field Seperator usage
#Created date: Monday 24 July 2023 01:31:30 AM IST
#Modified date: 


group_details=`cat /etc/group | grep docker`

IFS=:
set $group_details
echo "username=$1 \
     password=$2  \
     group_id=$3"  
