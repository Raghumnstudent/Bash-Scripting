#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: checking disk usage in any system
#Created date: Sunday 23 July 2023 11:53:29 PM IST
#Modified date:

set -x

threashold=80
Hostname=`hostname`

for path in `df -h | grep -vE 'Filesystem|tmpfs|run' | awk '{print $5}' | sed 's/%//g'`
do
	if [ $path -ge $threashold ];then
		df -h | grep $path >> /tmp/temp
	fi
done

file_size=`cat /tmp/temp | wc -l`
if [ $file_size -ge 1 ];then
	mail -s "$Hostname Disk usage is Critical" nraghu@zeomega.com < /tmp/temp
fi

