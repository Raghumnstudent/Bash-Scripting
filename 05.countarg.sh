#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Count numbers of arguments in path or passed while executing
#Created date: Monday 26 June 2023 01:40:25 AM IST
#Modified date:

# ./countarg.sh * --> * means current path, how many files are available in the current path
# ./countarg.sh Raghu Ravi Raju --> output is three 
echo "your currently given arguments are $#"

if [ $# -lt 1 ];then
echo "The program usage is ./countarg.sh options"
else
echo "Progrom executed successfully"
fi


