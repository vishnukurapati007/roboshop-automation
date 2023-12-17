#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "error installing $2 is failed"
        exit 1
    else
        echo "$2 installation success"

    fi
}

    if [ $ID -ne 0 ]
    then
        echo "ERROR:: Please run this script with root access"
        exit 1 # you can give other than 0
    else
    echo "You are root user"
    fi # fi means reverse of if, indicating condition end

dnf install mysql -y

VALIDATE $? "installing mysql"

dnf install git -y

VALIDATE $? "installing git"