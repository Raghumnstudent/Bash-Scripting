#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Call multiple scripts using single script
#Created date: Monday 24 July 2023 10:14:07 AM IST
#Modified date:

<<details
The -c option in Bash scripting instructs the bash interpreter to read a single command from the standard input (usually the keyboard) 
and execute it immediately.

example:

bash -c ls

bash -c cat files.txt

details

for file in `ls -la | grep .sh | grep -Ev Bash | awk '{print $9}'`
do
	bash -c "source $file"
done
