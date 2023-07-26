#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: logger command usage in scripting
#Created date: Wednesday 26 July 2023 09:13:03 AM IST
#Modified date:

cpu_usage=`top -bn 1 | grep "%Cpu(s)" | awk '{print $2+$4}' | awk -F . '{print $1}'`

ls -la $PWD | grep cpu_alert.txt
if [ $? -ne 0 ];then
	touch $PWD/cpu_alert.txt
fi
if [ $cpu_usage -ge 90 ];then
        logger "The cup usage is $cpu_usage it is in critical stage,please check the system" -p user.err -t 29.logger.sh -f $PWD/cpu_alert.txt -i 
elif [ $cpu_usage -ge 80 -a $cpu_usage -lt 90 ];then
     	   logger "The cup usage is $cpu_usage,please check the system" -p user.waring -t 29.logger.sh -f $PWD/cpu_alert.txt -i
else
           logger "The cup usage is $cpu_usage"  -t logger_scipt_file -f $PWD/cpu_alert.txt	
fi
