#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the while loop
#Created date: Monday 03 July 2023 12:56:31 AM IST
#Modified date:

read -p "Enter the any number: " n
i=1

while [ $i -le 10 ]
do
b=$(($n*$i))
echo "$n * $i = $b"
i=$(($i+1))
done
