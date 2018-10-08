#!/bin/bash



#echo Hello, who am I talking to?

#read varname

#echo It\'s nice to meet you $varname



#read -p 'Username: ' uservar
#read -sp 'Password: ' passvar

#echo

#echo Thankyou $uservar we now have your login details



echo Here is a summary of the sales data:

echo ===================================
cat /dev/stdin | cut -b 3  | sort
