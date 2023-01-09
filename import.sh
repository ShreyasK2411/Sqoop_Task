#!/bin/bash

sqoop job \
--create update \
-- import \
--connect jdbc:mysql://localhost:3306/test \
--driver com.mysql.jdbc.Driver \
--username root \
--password cloudera \
--table salaries \
--incremental append \
--check-column id \
--last-value 0 \
--m 1

sqoop job --exec update
sqoop job --list

hdfs dfs -ls -R
