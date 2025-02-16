#!/bin/bash

# USERID=$(id -u)
# # echo $id

# if [ $USERID -ne 0 ]
# then
#     echo "Please run the script with root access"
#     exit 1
# else 
#     echo "You are super user"
# fi        

# dnf install mysql -y

# if [ $? -ne 0 ]
# then
#     echo "Installation of mysql is failed"
#     exit 1
# else 
#     echo "Installation mysql passed..."    
# fi    

# dnf install git -y

# if [ $? -ne 0 ]
# then
#     echo "Installation of git is failed"
#     exit 1
# else 
#     echo "Installation of git passed..."    
# fi  

# echo "Done...."

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 ... $R FAILURE .. $N"
    else 
        echo -e "$2 ... $G PASS $N"    
    fi
}

USERID=$(id -u)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log



if [ $USERID -ne 0 ]
then 
    echo "Please be a root user"
    exit 1
else 
    echo "You are super bro"
fi




dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Mysql installation"