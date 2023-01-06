#!/bin/bash

sqoop import --connect jdbc:mysql://localhost:3306/test \
--driver com.mysql.jdbc.Driver \
--username root \
--password cloudera \
--table salaries \
--target-dir salaries \
--incremental append \
--check-column id \
--last-value 50 \
--m 1
