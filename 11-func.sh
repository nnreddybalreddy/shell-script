#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2...failure"
        exit 1
    else 
        echo "$2...PASS" 
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Not a super user"
    exit 1
else 
    echo "Super User"
fi

dnf install mysql -y

VALIDATE $? "Mysql installation"


dnf install git -y 

VALIDATE $? "git installation"

       


