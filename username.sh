#! /bin/bash
# username.sh
# Nikita Shetty
echo "The only characters that can be used are: "
echo "   -lower case letters"
echo "   -digits"
echo "   -the underscore character"
echo "It must start with a lower case letter"
echo "It must contain at least three but no more than 12 characters"

read ZIP
while echo "$ZIP" | egrep -v "^[0-9]{5}$" > /dev/null 2>&1
do
	echo "You must enter a valid ZIP code - five digits only!"
	echo "Enter a five-digit ZIP code: "
	read ZIP
done
echo "Thank you"
