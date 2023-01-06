#!/bin/bash

read -p "Enter name of file:" file_name

# Checking if the file exists
if [ -e $file_name ]
then
	mysql -u bigdata test < script.sql > output.tab --password=Bigdata@123

	if [ $? -eq 0 ]
	then
		echo "Updating the database"
		bash import.sh
	fi 
else
	echo "File doesn't exists"
fi

