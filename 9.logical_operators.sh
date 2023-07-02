#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the logical operators
#Created date: Wednesday 28 June 2023 12:57:06 AM IST
#Modified date: 

read -p "Enter Pyshic marks: " py
read -p "Enter math marks: " m
read -p "Enter science marks: " s

#AND -a operation
if [ $py -ge 35 -a $m -ge 35 -a $s -ge 35 ];then
echo "All Subjects are passed"
else
echo "Any one subject is failed"
fi

#OR -o operation
read -p "Enter your age: " age

if [ $age -ge 1 -a $age -le 10 ];then
echo "You are child"
elif [ $age -gt 10 -a $age -le 20 ];then
echo "You are teenager"
elif [ $age -gt 20 -a $age -le 30 ];then
echo "You are youngh"
else
echo "You are older"
fi
