#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: usecases of set command to configure shell options
#Created date: Tuesday 04 July 2023 09:44:37 AM IST
#Modified date: 

#Enabling the debug mode, instead of -x, it you put +x means disabling debug mode. same applies for other modes

#debug mode will print the command start with ++ then followed by command output.

#i always go with debug mode enabled in my script and enabled exit on error.
set -x

ls

echo "Hi, I am Raghu M N" > raghu.txt
echo "I am from Malavalli" >> raghu.txt

#verbose mode will print exact script command in console then followed by the command output
#set -v
#
#ls -la

#enabling exit on error mode
set -e

ls

ls -y

echo "I am from Malavalli"


