#!/bin/bash

a=100
b=20

if [ $a -eq $b ]
then
  echo "$a is equal to $b"
elif (( $a > $b ))
then 
  echo "$a is greater than $b"
elif (( $a < $b ))
then
  echo "$a is less than than $b"
elif [ $a -ne $b ]
then 
  echo "$a is not equal to $b"
else
  echo "value of a is $a and value of b is $b"
fi

name1="Raghu"
name2="Ravi"


