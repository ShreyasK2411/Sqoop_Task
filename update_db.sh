#!/bin/bash

mysql -u root -e "insert into test.salaries values ('F',25,3000,41123,default);" --password=cloudera
mysql -u root -e "insert into test.salaries values ('M',25,3000,41123,default);" --password=cloudera

sqoop job --exec update

hdfs dfs -ls -R /user/cloudera/salaries
