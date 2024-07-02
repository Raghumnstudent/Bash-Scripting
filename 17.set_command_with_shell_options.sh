#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: usecases of set command to configure shell options
#Created date: Tuesday 04 July 2023 09:44:37 AM IST
#Modified date: 

#Enabling the debug mode, instead of -x, it you put +x means disabling debug mode. same applies for other modes
set -x

ls

echo "Hi, I am Raghu M N" > raghu.txt
echo "I am from Malavalli" >> raghu.txt

#enabling exit on error mode
set -e

ls

ls -y

echo "I am from Malavalli"
