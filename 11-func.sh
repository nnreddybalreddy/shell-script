#!/bin/bash

VALIDATE(){
    echo "Exit status:$1"
    echo "How"

}


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Not a super user"
    exit 1
else
    echo "Super User"
fi    


dnf install mysqld -y 



VALIDATE $? "Installing MYSQL"

dnf install git -y 

VALIDATE $? "Installing GIT"

