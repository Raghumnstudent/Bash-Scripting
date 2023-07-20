#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: this script check the cup  utilization and give % of cpu utilization
#Created date: Wednesday 19 July 2023 10:09:08 AM IST
#Modified date:

logfile=$PWD/cpu_utilization.txt
Host=`hostname`
cpu_util=`top -bn 1 |grep "Cpu(s)" | awk '{ print $2+$4 }' | awk -F. '{ print $1 }'`

if [ $cpu_util -ge 90 -a $cpu_util -lt 98 ];then
      	echo "The cpu utilization is $cpu_util%,it is in waring stage on $Host"
        echo "The cpu utilization is $cpu_util%,it is in waring stage on $Host `date "+%F %H:%M:%S"`" >> $logfile	
elif [ $cpu_util -ge 98 ];then
	echo "The cpu utilization is $cpu_util%,it is in critical stage on $Host" 
        echo "The cpu utilization is $cpu_util%,it is in waring stage on $Host `date "+%F %H:%M:%S"`" >> $logfile	
else
	echo "The cpu utilization is $cpu_util% on $Host"
        echo "The cpu utilization is $cpu_util% on $Host `date "+%F %H:%M:%S"`" >> $logfile	
fi
