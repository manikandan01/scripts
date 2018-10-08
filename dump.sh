#!/bin/bash

#mysqldump -u root -p site > task2.tar.gz

#dump
month=$(date | awk '{print $2}')
day=$(date | awk '{print $3}' )
year=$(date | awk '{print $6}')
now=$(date +"%I:%M:%S")
#now=$(date +"%T")
foldername=$(echo $day $month $year $now"_backups")
#date +"%I:%M:%S"



mysqldump -u root -p site | gzip > task4.tar.gz
list=$(cat task3.tar.gz)
echo $foldername
#echo "Current time : $now"
#mkdir -p $task3.tar.gz




