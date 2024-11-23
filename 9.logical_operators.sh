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
if [ $py -ge 35 -a $m -ge 35 -a $s -ge 35 ]
then
   echo "All Subjects are passed"
else
   echo "Any one subject is failed"
fi

#OR -o operation
read -p "Enter your age: " age

if [ $age -ge 1 -a $age -le 10 ]
then
   echo "You are child"
elif [ $age -gt 10 -a $age -le 20 ]
then
   echo "You are teenager"
elif [ $age -gt 20 -a $age -le 30 ]
then
   echo "You are youngh"
else
echo "You are older"
fi

#Using string comperation,relational and logical operator in single 

selected="yes"
num1=7
num2=5
num3=8
num4=10

if [ $selected="yes" -a $num1 -gt $num2 -a $num3 -gt $num4 ]
then
   echo "Yes selected and greater"
else
   echo "Not selected and not greater"
fi

#Not operator --> will have only symbol !

if ! [ 6 -gt 8 ]
then
echo "Making true statement as false using Not operator"
fi

#-n is used check if the variable have non-empty vaule mean it have value

Name="Raghu"
if [ -n "$Name" ]
then
   echo "The variable Name have the value that is $Name"
else
   echo "The variable Name don't have value"
fi


#-f option is used to check if the file is exit or not

if [ -f "raghu.txt" ]
then
   echo "The file raghu.txt is exists and it is regular file"
else
   echo "The file raghu.txt is not exists or it is not regular file"
fi






