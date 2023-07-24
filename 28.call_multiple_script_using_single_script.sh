#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Call multiple scripts using single script
#Created date: Monday 24 July 2023 10:14:07 AM IST
#Modified date:

for file in `ls -la | grep .sh | grep -Ev Bash | awk '{print $9}'`
do
	bash -c "souce $file"
done
