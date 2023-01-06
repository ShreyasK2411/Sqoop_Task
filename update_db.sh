#!/bin/bash

sqoop job 
--create update\
--import\
--connect jdbc:mysql://localhost:3306/test\
--driver com.mysql.jdbc.Driver\
--username bigdata\
--password Bigdata@123\
--table salaries\
--incremental append\
--check-column id
