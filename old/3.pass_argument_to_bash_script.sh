#!/bin/bash

#whatever varibales are passed while executing this script,$0 take the script name,other argument storing from $1 $2 ...
echo Pass the arguments while execuing script like ./3.pass_argument_to_bash_script Bangalore Mysore
#echo $1 $2

#converting the passed arguments into array using @ and count the size of array in that array
echo $1 $2 $3

args=("$@")
echo Printing the array $@
echo Printing size of array $#
echo First element of array ${args[0]}

declare -A raghu=( [eorfwo]=yes:1 [jriwr]=no:3 [wreoqewo]=no:4 )

echo "${!raghu[@]}"

for key in "${!raghu[@]}";
do
  echo ${raghu[$key]} | awk -F ":" '{print$1}'
  number=`echo ${raghu[$key]} | awk -F ":" '{print$2}'`
  echo $number
done

