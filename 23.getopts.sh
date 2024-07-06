#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the built-in function of getopts
#Created date: Tuesday 18 July 2023 09:11:14 AM IST
#Modified date:

<<details
getops

In Bash scripting, getopts is a built-in command that allows you to parse command-line options and arguments easily passed to script.
It is particularly useful when you want to create scripts that accept various options and parameters from the user. 
getopts works well for simple option handling, but for more complex cases, 
you might want to consider using external libraries like getopt.

getopts will iterate over the arguments passed into script after the script name and get read of the value if that option have value.
getopts will validate the passed arguments with options mentioned in optionstring.

every letter in string will represents the one option and we must mention the : after every letter if that option is argument and for flag no need to mention this symbol :

getops will process the options and arguments passed to script one by one. if it is only option, getops store to avriable. if it argument, store option in varible and it's value into OPTARG varible

Syntax:

getopts 'letter1:letter2:letter3' variable  -->  it will iterate over the all passed aguments and options and check is that option mentioned in options evenif it is not exits,give error.

the letters before : will be consider as argument and can pass the value
the letters after the : will be consider as flag
details

#colleting the details

usage(){
      echo "The usage of script is $0 -n <name> -a <age> -p <place> -i"
      exit 1
}

#checking all arguments are passed or not
test $# -lt 6 && usage

#here n,a,p are agrument and which expect the values. i is option,don't expect the value
while getopts "n:a:p:i" option; do
      case $option in
	   n) 
           Name="$OPTARG"
           ;;
           a)
	   Age="$OPTARG"
	   ;;
           p)
	   Town="$OPTARG"
	   ;;
	   i)
	   country="India"
	   ;;
           * | ? | h)
           usage
	   ;;
       esac
done

echo "The details of user is $Name $Age $Town $country"

