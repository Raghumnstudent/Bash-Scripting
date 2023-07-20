#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: understanding the if,elif,and else conditional statements
#Created date: Sunday 02 July 2023 07:58:35 PM IST
#Modified date:

read -p "Enter the number for a: " a
read -p "Enter the number for b: " b
read -p "Enter the number for c: " c
read -p "Enter the number for d: " d

if [ $a -gt $b -a $a -gt $c -a $a -gt $d ];then
   echo "$a is big number"
elif [ $b -gt $c -a $b -gt $d ];then
   echo "$b is big number"
elif [ $c -gt $d ];then
   echo "$c is big number"
else
   echo "$d is big number"
fi
