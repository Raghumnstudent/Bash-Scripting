#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the special varibales
#Created date: Monday 26 June 2023 12:12:45 AM IST
#Modified date: 

#multi-line comment
<<commenting
The special variables in bash
$*  --> it stores the complete set of positional arguments as single string,store all arguments passed while executing script in this single variable
$#  --> it set to number of arguments specified,count the numbers arguments passed and store in this variable
$0  --> The filename of the current script
$1  --> stoes the first argument passed after file name
"$@" --> each quoted string treated as a seperate argument
$?  --> exit status of last command
$$  --> process id of current script
$!  --> process id of the last background job
commenting

echo "Pass the arguments while executing this script"
echo "=============================================="
echo "All postional arguments are $*"
echo "Number of postional arguments is $#"
echo "executing script name is $0"
echo "first postional argument is $1"
echo "second postional argument is $2"
echo "exit status of last command is $?"
echo "'process id of current script is $$"
sleep 400 &
echo "sleep command process id is `ps -aux | grep sleep`"
echo "'$!' output is $!"

