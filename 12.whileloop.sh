#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the while loop
#Created date: Monday 03 July 2023 12:56:31 AM IST
#Modified date:

<<comment
while condition_become_true
do
    execute the code to perfom task
done

condition can be return status of excuted code,condition check etc
we can pass the input to while loop using < arrow
comment

#count the numbers
count=0
while [ $count -ne 10 ]
do
      echo "$count"	
      count=$(($count+1))
done

# < tell the command to read the input from file, in below example also while loop is command and tell to read from file
#command < filename

#reading the file content and using Build-in Internal field seperator(IFS) default values. default values are space,tab and new line
while read host
do
   echo "$host"
done < hostfile

#<<< operator is used for here-string redirection.
#It provides a way to embed a multi-line string directly within a command.

#passing the output of command as std input into while loop using <<< 
#use the for loop when you want to iterate over the command, that is very straght forward
files=`ls`
while read file
do
   echo "$file"
done <<< "$files"


#writing while loop in single line
count=0
while [ $count -ne 10 ];do echo "$count";count=$(($count+1));done

