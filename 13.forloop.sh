#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the for loop
#Created date: Monday 03 July 2023 08:17:47 AM IST
#Modified date:

<< details
syntax of for loop

for variable in list_of_values
do
    peform task on iterated value
done
details

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

#using build-in seq to iterate over the numbers in for loop
# $(seq start step stop)
for num in $(seq 1 2 10)
do
    echo "$num"
done


#iterate over the list of files in directory
for file in `ls`
do
    echo "$file"
done

#writing the for loop in single line
for n in $(seq 1 3 10);do echo "$n";done









