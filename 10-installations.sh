#!/bin/bash

USERID=$(id -u)
# echo $id

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access"
    exit 1
else 
    echo "You are super user"
fi        

dnf install mysql -y

echo "Proceeding..."