#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then 
    echo "Source directory exist"
else 
    echo "SRC not exists"
    exit 1    
fi 

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

echo $FILES

while IFS= read -r line
do 
    echo "Deleting a file:$line"
    rm -rf $line
done <<< $FILES