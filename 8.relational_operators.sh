#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the relational operators
#Created date: Wednesday 28 June 2023 12:05:59 AM IST
#Modified date:

<<comment
-eq equal
-ne not equal
-lt less than
-le less than or equal
-gt greater than
-ge greater than or equal
comment

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

test $num1 -eq $num2;echo "$?";
test $num1 -ne $num2;echo "$?";
test $num1 -gt $num2;echo "$?";
test $num1 -ge $num2;echo "$?";
test $num1 -lt $num2;echo "$?";
test $num1 -le $num2;echo "$?";

if [ $num1 -gt $num2 ];then
echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ];then
echo "$num1 is less than $num2"
elif [ $num1 -eq $num2 ];then
echo "$num1 is equal to $num2"
fi
