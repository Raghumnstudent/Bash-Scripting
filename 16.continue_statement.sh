#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the continue statement
#Created date: Tuesday 04 July 2023 08:36:56 AM IST
#Modified date:
#!/bin/bash


#continue statement is used to skip operation when some condition are meet,means do nothing when condition meet


#iterate over the 1 to 10
echo "skiping the even numbers"
for ((i=0; i<=10; i++))
do
    #checking if the value is even based on remainder,if even skip that iteration
    if [ $(($i%2)) -eq 0 ]
    then
       continue
    fi

    #printing the odd numbers
    echo $i
done

#skip the multiple of 3

echo "============================================================================="
echo "skiping the multiple of 3"

counter=1
while [ $counter -le 20 ]
do
    if [ $(($counter%3)) -eq  0 ]
    then
       counter=$(($counter+1))
       continue
    fi

    echo "$counter"
    counter=$(($counter+1))
done
