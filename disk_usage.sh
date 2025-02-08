#!/bin/bash

disk_usage=`df / | grep / | awk '{print$5}' | cut -d% -f1`
inode_usage=`df -ih / | grep / | awk '{print$5}' | cut -d% -f1`

threshold=80

if [[ $disk_usage -ge $threshold || $inode_usage -gt $threshold ]]
then
   echo "disk usage or inode usage is greater than 80"
else
   echo "we are good"
fi

