#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the function in bash scripting
#Created date: Tuesday 11 July 2023 09:19:56 AM IST
#Modified date:


<<details
syntax:

name_of_function(){
       code of function to perform task
}

calling the function by it's name

name_of_function 


if you want to pass the argument to function, pass it in front of function name and using that argument using positional argument

what if we need beyon $9 argument ,mean 10 or more than 10?
yes you can access using ${10} ${11} and so on

details

: '
backup (){
      if [ -f $1 ]
      then
	 backupfile="/home/nraghu/$(basename ${1}).$(date +%F).$$"
	 echo "Taking the backup of $1 into $backupfile"
	 cp $1 $backupfile
	 return $backupfile
     fi
}


backup /etc/hosts
if [ -f $backupfile ]
then
   echo "Backup success"
fi

'
name="Raghu M N"
age=23
#The return value will come and store in $? special variable,you can use directly or assging to other variable and use
adding_numbers() {
 	local num1=$1
        local num2=$2
	local sum=$(($num1 + $num2))
	return $sum
}

adding_numbers 2 4
echo "The Fuction return sum is $?"

<<comment
variable scope
if we use local key word while definig variable,that variable is only accessable with that function or block.
declaring the variable without local key word is called global variable,you can use that variable in any where in the script
comment


