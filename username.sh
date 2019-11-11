#! /bin/bash
# username.sh
# Nikita Shetty

echo "Enter a username."
echo "The only characters that can be used are: "
echo "   -lower case letters"
echo "   -digits"
echo "   -the underscore character"
echo "It must start with a lower case letter"
echo "It must contain at least three but no more than 12 characters"

read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid password!"
	echo "Enter a password: "
	read USERNAME
done
echo "Thank you"
