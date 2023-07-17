#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: understanding the Arrays in Bash scripting
#Created date: Monday 17 July 2023 09:35:32 AM IST
#Modified date:
#Arrays

#1) Indexed array 
months=("Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec")

#access value from array using index --> ${months[6]}
echo "The my birthday date is 13-${months[6]}-1999"
echo "The entire content of array is ${months[@]}"
echo "The number of elements in array is ${#months[@]}"

count=1
for month in ${months[@]}
do
    echo "The $count month is $month"
    ((count++))
done

#2)Assosiated array also called as hash table,dictionary

declare -A my_details

my_details["Name"]="Raghu M N"
my_details["Age"]="25"
my_details["Town"]="Malavali"
my_details["Degree_college"]="MSRIT"

#assigning values
echo "My Town is ${my_details["Town"]}"

echo "Accessing the all values in declarative array ${my_details[@]}"

echo "Accessing the all keys in declarative array ${!my_details[@]}"

echo "Accessing the number of elements in  array ${#my_details[@]}"

