#! /bin/bash -x
shopt -s extglob
function validate()
{
pat="^[A-Z]{1}[a-zA-Z]{2}[a-zA-z0-9]*"
if [[ $1 =~ $pat ]]
then
echo username is valid
else
echo username is not valid
fi
}
echo enter the username to register
read username
validate $username
echo enter the lastname to register
read lastname
validate $lastname
