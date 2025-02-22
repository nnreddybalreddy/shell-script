#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
THRESHOLD=6

while IFS=read -r line
do
    USAGE=$(echo $DISK_USAGE | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $DISK_USAGE | awk -F " " '{print $NF}')
    if [ $DISK_USAGE -ge $THRESHOLD ]
    then 
        echo "$DISK_USAGE is greater than $THRSHOLD"
    fi 

done<<<$DISK_USAGE



