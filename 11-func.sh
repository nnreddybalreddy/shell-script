#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Not a super user"
    exit 1
else
    echo "Super User"
fi    


dnf install mysqld -y 

if [ $? -ne 0 ]
then 
    echo "mysqld installation failed"
    exit 1
else 
    echo "mysql installation pass"
fi

dnf install git -y 

if [ $? -ne 0 ]
then 
    echo "git installation failed"
    exit 1
else 
    echo "git installation pass"
fi