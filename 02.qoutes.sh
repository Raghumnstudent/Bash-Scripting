#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Verifiying the different between the quotation marks
#Created date: Tuesday 20 June 2023 12:33:38 AM IST
#Modified date:

name=Ravi
age=24

#double quotes --> print message alone value of that varibale
echo "The my name is $name and my age is $age"

#single quotes --> whatever you pass,printed as it is
echo 'The my name is $name and my age is $age'

#revers quotes --> used to pass the commands alone with info,bash will treat that as command,
#if the commmand is wrong,tell command not found and give empty value
echo "My system hostname is `hostname`"

<<details
The -c option in Bash scripting instructs the bash interpreter to read a single command from the standard input (usually the keyboard) 
and execute it immediately.

example:

bash -c ls

bash -c cat files.txt
details
