#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
echo "script Started executing at $TIMESTAMP" &>>LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "error installing $2 is $R failed $N"
        exit 1
    else
        echo -e "$2 installation $G success $N"

    fi
}

    if [ $ID -ne 0 ]
    then
        echo -e "$R ERROR:: Please run this script with root access $N"
        exit 1 # you can give other than 0
    else
    echo -e "$G You are root user $N"
    fi # fi means reverse of if, indicating condition end

dnf install mysql -y &>>LOGFILE

VALIDATE $? "mysql"

dnf install git -y &>>LOGFILE

VALIDATE $? "git"