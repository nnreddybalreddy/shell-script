#!/bin/bash

# USERID=$(id -u)
# TIMESTAMP=$(date +%F-%H-%M-%S)
# SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
# LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then 
#         echo "$2...failure"
#         exit 1
#     else 
#         echo "$2...PASS" 
#     fi
# }

# if [ $USERID -ne 0 ]
# then
#     echo "Not a super user"
#     exit 1
# else 
#     echo "Super User"
# fi

# dnf install mysql -y &>>$LOGFILE

# VALIDATE $? "Mysql installation"


# dnf install git -y &>>$LOGFILE

# VALIDATE $? "git installation"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)

LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log



VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2  $R failed....$N"
        exit 1
    else
        echo -e "$2  $G pass...$N"    
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "not a super user"
    exit 1
else
    echo "You are super"
fi 

for i in $@
do
    echo "installation of $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then 
        echo -e "$i $Y already installed...$N"
    else 
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "$i installation"
    fi

done



       


