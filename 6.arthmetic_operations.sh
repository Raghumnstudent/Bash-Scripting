#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Arthmetic operations
#Created date: Monday 26 June 2023 01:52:51 AM IST
#Modified date:

read -p "Please enter some value:" a
read -p "Please enter another value:" b

#I always go with this method for arthmetic operation

echo "Addtion $(($a+$b))"

if [ $a -gt $b ];then
   echo "Subtraction $(($a-$b))"
   echo "Divition $(($a/$b))"
   echo "this Divition giving the remainder $(($a%$b))"
else
   echo "Subtraction $(($b-$a))"
   echo "Divition $(($b/$a))"
   echo "this Divition giving the remainder $(($b%$a))"
fi

echo "Multiplecation $(($a*$b))"
