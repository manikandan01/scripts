#!/bin/sh
#echo Hello World
#echo $PATH
#cp $1 $testuser.txt 
#echo Details for  testuser.txt 
#ls -lh $testuser.txt 

cp $1 $2
# Let's verify the copy worked
echo Details for $2
ls -ltrh $2
echo The current:$USER

