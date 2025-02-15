#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Not a super user"
    exit 1
else 
    echo "Super User"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "mysql installation fail"
    exit
else 
    echo "Installation of mysql failed"
fi

dnf install git -y 

if [ $? -ne 0 ]
then 
    echo "git Installation fail"
    exit 
else 
    echo "Installation of git passed"
fi         


