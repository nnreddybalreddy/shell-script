#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then 
    echo "Dir exists"
else 
    echo "Dir not exists"
    exit 1
fi 

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)
echo $FILES

while IFS= read -r line
do
    echo "Deleting a file :$line"
    rm -rf line
done<<<$FILES