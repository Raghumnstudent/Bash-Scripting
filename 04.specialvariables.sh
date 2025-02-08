#!/bin/bash

#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the special varibales
#Created date: Monday 26 June 2023 12:12:45 AM IST
#Modified date: 

#multi-line comment
<<commenting

usage of script is  ./4.specialvariables.sh Raghu Ravi Naga

The special variables in bash

$*  --> it stores the complete set of positional arguments as single string,store all arguments passed while executing script in this single variable

$#  --> it set to number of arguments specified,count the numbers arguments passed and store in this variable

$$  --> process id of current script

$!  --> process id of the last background job

$0  --> The filename of the current script

$1  --> stores the first argument passed after file name,we can give nine postional arguments to script and get by $1 $2 ... $9

"$@" --> it will also work as $* but when we pass argument within the quote, it will treated quoted argument as a seperate argument
we have use $@ within double quotes
ex: ./test.sh Raghu "Ravi M N" --> here "$@" store Ravi M N as single argument

test.sh 
for i in $*
do
    echo $i ----- 
done

for j in "$@"
do
    echo $j
done
 
$?  --> exit status of last command

commenting

echo "Pass the arguments while executing this script"
echo "=============================================="
echo "All postional arguments are $*"
echo "Number of postional arguments is $#"
echo "executing script name is $0"
echo "process id of current script is $$"
echo "first postional argument is $1"
echo "second postional argument is $2"
echo "exit status of last command is $?"
sleep 400 & echo "sleep command process id is `ps -aux | grep sleep`"
echo "'$!' output is $!"

