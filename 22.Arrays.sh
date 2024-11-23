#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: understanding the Arrays in Bash scripting
#Created date: Monday 17 July 2023 09:35:32 AM IST
#Modified date:
#Arrays


<<details
in shell scripting, there are two types of array

1)Indexed array --> there is no option to assosiate the key to value. by defautl shell will assign the number staring from zero into each value. Indexed array must be created with space seperated value otherwise all values will be considered as single array element
you can easily iterate over the value

2)Assosiated array --> First we need to declare array using declare key with -A option. 
Assosiative array will give option to define the key and add value to it

When we need to print value of any variable,just use $<name_of_variable>

when we working with array,use {} and printing the array's values ${name_of_array[@]} and printing keys of array ${!name_of_array[@]}

details

#1) Indexed array --> we can declare the index array using -a option,but it is optinal,we can directly call name of array,assgin the value.

months=("Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec")

#or
# declare -a months  --> i will always go with direct creation of array, not delcare index array


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

#2)Assosiated array also called as hash table,dictionary. declartion must be required.

# i always go with declare array with -A option,then keep on adding like below example.
declare -A my_details

my_details["Name"]="Raghu M N"
my_details["Age"]="25"
my_details["Town"]="Malavali"
my_details["Degree_college"]="MSRIT"

#or

#declare -A my_details=( ["Name"]="Ravi M N" ["Age"]="22" ["Town"]="Malavalli" ["Degree_college"]="Boys home ITI" )

#accessing values
echo "My Town is ${my_details["Town"]}"

echo "Accessing the all values in declarative array ${my_details[@]}"

echo "Accessing the all keys in declarative array ${!my_details[@]}"

echo "Accessing the number of elements in  array ${#my_details[@]}"

# if we want to print the entire array key and it's value, we need to iterate and then print it. we can't print direcly by array name.

for detail in ${!my_details[@]}
do
    echo "Key is $detail and value is ${my_details[$detail]}"
done




# we can add value to key,that key is already present in array

my_details["Name"]+='Ravi'

echo "${my_details["Name"]}"
