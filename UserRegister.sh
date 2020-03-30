#! /bin/bash -x
shopt -s extglob
echo enter the username to register
read username
pat="^[A-Z]{1}[a-zA-Z]{2}[a-zA-z0-9]*"
if [[ $username =~ $pat ]]
then
echo username is valid
else
echo username is not valid
fi
