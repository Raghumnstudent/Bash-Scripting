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

For string comparision, i will use the below symbols because string have only two ways of compare

=  --> To check both string are equal
!=  --> To check both sting are not equal
-z string --> To check sring is empty,if string is empty it give true otherwise false
-n string --> To opposite version of -z , give true if string is non-emplty

file conditions

-e file_path  ----> To check the file exits or not
-f file_path  ----> To check file exit or not and is it regular file or not
-d directory_path --> to check directory exits or not
-s file_path --> check file is exits and file is non-empty
-r file_path --> check file is readiable access or not
-w file_path --> check file is write access or not
-x file_path --> check file is executable

comment

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

<<details
test command is used to evaluate the expression. it check for file types,compare values, evaluate logical condition,
return the succuss( exit status code 0 ) or failure (exit status code 1) status code based on result of test

sytanx : test expression 
            or 
         [ expression ]  --> ensure the spaces around the square backets,  it is simplified version of test command and i will use this only

details

test $num1 -eq $num2;echo "equal status code is $?";
test $num1 -ne $num2;echo "Not equal status code is $?";
test $num1 -gt $num2;echo "greater than status code $?";
test $num1 -ge $num2;echo "greater than or equal status code is $?";
test $num1 -lt $num2;echo "less than status code $?";
test $num1 -le $num2;echo "less than or equal status code is $?";

if [ $num1 -gt $num2 ]
then
   echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]
then
   echo "$num1 is less than $num2"
elif [ $num1 -eq $num2 ]
then
   echo "$num1 is equal to $num2"
fi


#file check conditions
if [ -e 2.qoutes.sh ]
then
   echo "File exits"
else
   echo "File not exits" 
fi

if [ -f 2.qoutes.sh ]
then
   echo "File exits and it is regular file"
else
   echo "File not exits or not regular file"
fi

if [ -d /home/ ]
then
   echo "Directory exits"
else
   echo "Directory not exits"
fi

if [ -s empty_file ]
then
   echo "File exits and it is not empty"
else
   echo "file not exits or file is empty"
fi

Today_date="23-Nov"

if [ -n $Today_date ]
then
   echo "variable have non empty string"
else
   echo "variable have empty string"
fi

Name=""

if [ -z $Name ]
then
   echo "Variable have empty string"
else
   echo "Variable have string"
fi

