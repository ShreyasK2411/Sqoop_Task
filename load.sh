#!/bin/bash

hdfs dfs -test -e /user/cloudera/salaries

if [ $? -eq 0 ]
then
	hdfs dfs -rm -R /user/cloudera/salaries
fi

hdfs dfs -ls /user/cloudera/

read -p "Enter name of file:" file_name

# Checking if the file exists
if [ -e $file_name ]
then
	mysql -u root test < script.sql > output.tab --password=cloudera

	if [ $? -eq 0 ]
	then
		echo "Updating the database"
		bash import.sh
	fi 
else
	echo "File doesn't exists"
fi
