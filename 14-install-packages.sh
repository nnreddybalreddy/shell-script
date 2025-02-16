#!/bin/bash
TIMESTAMP=$(date +%F-%M-%H-%S)
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)

LOGFILE=/tmp/$TIMESTAMP-$SCRIPT_NAME.log
R="\e[31m"
G="\e[32m"
N="\e[0m"



USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "not a root user"
    exit 1
else 
    echo "Its a root user"    
fi

# echo "all packages:$@"

for i in $@
do
    echo "$i"
done    