#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: shifting the positional parameters using shift command
#Created date: Wednesday 05 July 2023 09:30:10 AM IST
#Modified date:


set `date`

echo "The numbers of postional argumrnts are $#"

echo "$1 $2 $3 $4 $5 $6"

shift
echo "$1 $2 $3 $4 $5 $6"

shift 2
echo "$1 $2 $3 $4 $5 $6"

shift 3
echo "$1 $2 $3 $4 $5 $6"
