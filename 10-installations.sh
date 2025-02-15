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

if [ $? -ne 0 ]
then
    echo "Installation of mysql is failed"
    exit 1
else 
    echo "Installation mysql passed..."    
fi    

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git is failed"
    exit 1
else 
    echo "Installation of git passed..."    
fi  

echo "Done...."