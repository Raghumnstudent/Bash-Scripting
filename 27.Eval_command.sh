#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the Eval command
#Created date: Monday 24 July 2023 09:53:26 AM IST
#Modified date: 

<<info
In bash scripting, the eval command is used to execute the string as command.
syntax --> eval "command"

write the command within double quotes,it will consider as string, execute that as command using eval built-in function
info


eval "ls -lah /etc | grep hosts"

name="Raghu"
eval "echo Hello $name"

eval "ls -la | grep .txt"
