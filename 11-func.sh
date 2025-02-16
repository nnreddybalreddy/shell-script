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

TIMESTAMP=$(date +%F-+%M-+%H-%S)
SCRIPT_NAME=$(echo $? | cut -d "." -f1)

LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2  failed...."
        exit 1
    else
        echo "$2  pass..."    
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

dnf install mysql -y &>> $LOGFILE

VALIDATE $? "Mysql installation"

dnf install git -y &>> $LOGFILE
VALIDATE $? "git installation"

       


