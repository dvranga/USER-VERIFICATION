#! /bin/bash -x
shopt -s extglob
function validate()
{
pat="^[A-Z]{1}[a-zA-Z]{2}[a-zA-z0-9]*"
if [[ $1 =~ $pat ]]
then
echo $1 is valid
else
echo $1 is not valid
fi
}
function validateEmail()
{
pat="^[a-zA-z]{3}[-_+.]{1}?[0-9]{3}?@(bridgelabz|gmail|yahoo|1|abc)(.com|.co|.net)(.au|.in)?$"
if [[ $1 =~ $pat ]]
then
echo email is valid
else
echo "No! email is not valid"
fi
}
echo enter the username to register
read username
validate $username
echo enter the lastname to register
read lastname
validate $lastname
echo enter email to register
read email
validateEmail $email
echo enter the mobile number to register
read mobileNumber
pat="^[91 ]{3}[6-9]{1}[0-9]{9}$"
if [[ $mobileNumber =~ $pat ]]
then
echo "Mobile Number is valid"
else
echo "No! Mobile Number is not valid"
fi
function checkPassword()
{
pat="[!@#>$%^&*(]^{1}[A-Z]+[a-zA-z0-9]{6,}[0-9]+|[0-9]+[a-zA-z0-9]{6,}[A-Z]+[!@#>$%^&*(]^{1}"                                                                                                                      if [[ $1  =~ $pat ]]                                                                                                                                                                                               then
echo yes
else
echo $1 is not valid
fi
}
echo enter password
read password
checkPassword $password
