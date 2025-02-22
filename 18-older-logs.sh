#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then 
    echo "Dir exists"
else 
    echo "Dir not exists"
    exit 1
fi 

