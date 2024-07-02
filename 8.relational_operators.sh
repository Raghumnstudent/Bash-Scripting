#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the relational operators
#Created date: Wednesday 28 June 2023 12:05:59 AM IST
#Modified date:

<<comment

For integer comparision, i will use the below letter options to compare

-eq equal
-ne not equal
-lt less than
-le less than or equal
-gt greater than
-ge greater than or equal

For string comparision, i will use the below symbols because sting have only two ways of compare

=  --> To check both string are equal
!=  --> To check both sting are not equal

comment

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

<<test
test command is used to perform operation on given command, give the status code as 0 if command excuted successfully otherwise 1
test

test $num1 -eq $num2;echo "equal status code is $?";
test $num1 -ne $num2;echo "Not equal status code is $?";
test $num1 -gt $num2;echo "greater than status code $?";
test $num1 -ge $num2;echo "greater than or equal status code is $?";
test $num1 -lt $num2;echo "less than status code $?";
test $num1 -le $num2;echo "less than or equal status code is $?";

if [ $num1 -gt $num2 ];then
echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ];then
echo "$num1 is less than $num2"
elif [ $num1 -eq $num2 ];then
echo "$num1 is equal to $num2"
fi
