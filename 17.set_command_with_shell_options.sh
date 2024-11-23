#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: usecases of set command to configure shell options
#Created date: Tuesday 04 July 2023 09:44:37 AM IST
#Modified date: 

#Enabling the debug mode, instead of -x, it you put +x means disabling debug mode. same applies for other modes

#debug mode will print the command start with ++ then followed by command output.

<<details
i always go with debug mode enabled in my script and enabled exit on error.
how to debug the shell script? and how to get to know command is executed or not in bash?
* first enable debug mode in script
* then if command executed,in console you can see the + followed command,immidiately that command output
*Observe the ls,echo and if condition output in console, if condition is checked but command in if condition is not executed because condition not satisfied, ls and echo command executed we can see the output.
*But some commands don't std out or command stdout redirected to file, that commands we can't consider that command is not executed ex: set -e not produce any std out but it is executed. we have to analye script at that time
details

set -x

ls

echo "Hi, I am Raghu M N"

if [ 5 -gt 10 ]
then
   echo "ldklakdl"
fi

echo "I am from Malavalli" > raghu.txt
#verbose mode will print exact script command in console then followed by the command output
#set -v
#
#ls -la

#enabling exit on error mode
set -e

ls

ls -y

echo "I am from Malavalli"


