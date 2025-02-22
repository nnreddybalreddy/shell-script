#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
THRESHOLD=6

while IFS=read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $line -ge $THRESHOLD ]
    then 
        echo "$line is greater than $THRSHOLD"
    fi 

done<<<$DISK_USAGE



