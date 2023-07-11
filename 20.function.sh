#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the function in bash scripting
#Created date: Tuesday 11 July 2023 09:19:56 AM IST
#Modified date:

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

adding_numbers () {
	local num1=$1
	local num2=$2
	local sum=$((num1+num2))
	return $sum
}

result=$(adding_numbers 2 4)
echo "The sum output is $result"


