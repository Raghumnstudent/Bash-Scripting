#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the for loop
#Created date: Monday 03 July 2023 08:17:47 AM IST
#Modified date:

for i in `cat hostfile`
do
ping -c 1 $i > pingresult.txt
if [ $? -eq 0 ]
then
echo "The server $i looks fine"
else
echo "The sever $i not able to ping"
fi
done
