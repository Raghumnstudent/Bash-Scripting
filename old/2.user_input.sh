#! /bin/bash

#section 2 --> Read input from user
# this is used to do multiple lines as comment

<<comment
#taking input on same line using -p option
read -p "Enter your father name: " father_name
echo  My father name is $father_name
#taking the password with masking using -s option
read -sp "Enter your password: " pass
#echo my password is $pass
echo i will not display the password
comment

#taking the input as a array
echo Enter three names with space seperated 
read -a names
echo $names
echo first name is ${names[0]}, second name is ${names[1]}, third name is ${names[3]}

#if don't give any varibales to any command,it assign to REPLY variable
echo Enter three names with space seperated
read 
echo $REPLY
