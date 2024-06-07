#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the built-in function of getopts
#Created date: Tuesday 18 July 2023 09:11:14 AM IST
#Modified date:

while getopts "a:b:c" option; do
      case $option in
	   a) 
           echo "Option -a will be the argument and accept the vaule and value is $OPTARG"
           ;;
           b)
	   echo "Option -b will be the argument and accept the vaule and value is $OPTARG"
	   ;;
           c)
	   echo "Option -c will be the flag"
	   ;;
           \?)
           echo "Invalid option -$OPTARG" >&2
	   ;;
           :)
           echo "Option -$OPTARG requires an argument" >&2
	   ;;
       esac
done

<<comment
the usage of the  script is 

./myscript.sh -a "Raghu" -b 23 -c "Malavalli"
output:
Option -a was provided with argument Raghu
Option -b was provided with argument 24
Option -c was provided

./myscript.sh -u
Invalid option -u

./myscript.sh -a
Option -a requires an argument

comment
