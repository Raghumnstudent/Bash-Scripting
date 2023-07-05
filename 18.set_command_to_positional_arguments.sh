#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: setting the postional arguments using set command
#Created date: Wednesday 05 July 2023 09:09:52 AM IST
#Modified date:

#Enabling the debug mode. it print each command before executing and expand variables and arguments
set -x

set `date`

echo "Today is $1"
echo "Date is $2"
echo "Month is $3"
echo "Year is $4"
echo "Time is $5 $6"

#Enabling the versbose mode,it print commnands as they written in script
set -v

echo "Today is $1"

echo "Date is $2"

echo "Month is $3"

echo "Year is $4"

echo "Time is $5 $6"
