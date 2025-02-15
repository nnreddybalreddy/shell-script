#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Not a super user"
    exit 1
else
    echo "Super User"


dnf install mysqld -y 

if [ $? -ne 0 ]
then 
    echo "mysqld installation failed"
    exit 1
else 
    echo "mysql installation pass"
fi        