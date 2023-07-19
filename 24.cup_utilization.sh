#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: this script check the cup  utilization and give % of cpu utilization
#Created date: Wednesday 19 July 2023 10:09:08 AM IST
#Modified date:

Paths="/"
warning=90
critical=98
logfile=$PWD/cpu_utilization.txt
touch $logfile

for path in $Paths
do
	cup_util=`top -bn 1 |grep "Cpu(s)" | awk 'print "The cpu utilization is" $2+$4 "%" '`
done


