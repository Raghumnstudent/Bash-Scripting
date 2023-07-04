#! /bin/bash

echo "Print the multiplication table from 1 to 20"

#read -p "Enter the number within 20: " n
n=1
if [ $n -le 20 ]
then
   m=$n
   while [ $m -le 20 ]
   do
       for ((i=1; i<=10; i++))
       do
           echo "$m*$i = $(($m*$i))"
       done
   echo "==================================="
   m=$(($m+1))
   done
fi
