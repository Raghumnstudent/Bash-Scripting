#!/bin/bash
#Author: Raghu
#Vesrion: 
#Purpose: Arthmetic operation using the expr command
#Created date: Monday 26 June 2023 02:07:30 AM IST
#Modified date: 

read -p "Please enter some value: " a
read -p "Please enter another value: " b

echo "Addition is `expr $a + $b`"

if [ $a -gt $b ];then
echo "Subtraction `expr $a - $b`"
echo "Divition `expr $a / $b`"
echo "This Divition gives the remainder `expr $a % $b`"
else
echo "Subtraction `expr $b - $a`"
echo "Divition `expr $b / $a`"
echo "This Divition gives the remainder `expr $b % $a`"
fi
echo "Multiplications `expr $a \* $b`"

