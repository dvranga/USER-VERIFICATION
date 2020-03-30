#! /bin/bash -x
shopt -s extglob
echo enter the mobile number to register
read mobileNumber
function
pat="^[91 ]{3}[6-9]{1}[0-9]{9}$"
if [[ $mobileNumber =~ $pat ]]
then
echo "Mobile Number is valid"
else
echo "No! Mobile Number is not valid"
fi
