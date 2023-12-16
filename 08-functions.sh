#!/bin/bash

ID=$(id -u)

VALIDATE()[
    if [ $1 -ne 0 ] 
    then
        echo "error installing $1 is failed"
        exit 1
    else
        echo "$1 installation sucess"
    if [ $2 -ne 0 ]
    then
        echo "error installing $2 is failed"
        exit 1
    else
        echo "$2 installation sucess"
    fi
]


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

