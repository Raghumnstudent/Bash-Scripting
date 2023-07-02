#!/bin/bash
#Author: Raghu M n
#Vesrion: 
#Purpose: Understanding the nested if statement
#Created date: Sunday 02 July 2023 08:13:22 PM IST
#Modified date:

read -p "Enter the math marks: " m
read -p "Enter the physics marks: " p
read -p "Enter the science marks: " s

if [ $m -ge 35 -a $p -ge 35 -a $s -ge 35 ]
then
    total=$(($m+$p+$s))
    avg=$(($total/3))
    echo "The total mark is $total"
    echo "The avrage mark is $avg"
    if [ $avg -ge 75 ]
    then
    echo "Congratulation, You got distinction"
    elif [ $avg -ge 60 -a $avg -lt 75 ]
    then
    echo "Congratulation, you got first class"
    elif [ $avg -ge 50 -a $avg -lt 60 ]
    then
    echo "Congratulation,you got second class"
    elif [ $avg -ge 40 -a $avg -lt 50 ]
    then 
    echo "Congratulation, you got third class"
    else
    echo "Congratulation,you have passed"
    fi
else
echo "You are failed"
fi
