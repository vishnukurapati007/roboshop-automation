#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then

    echo "ERROR::please run this script with root user"
exit 1
else
    echo "you are root user"

fi
dnf install mysql -y