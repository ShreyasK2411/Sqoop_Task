#!/bin/bash

sqoop import --connect jdbc:mysql://localhost:3306/test --driver com.mysql.jdbc.Driver --username bigdata --password Bigdata@123 --table salaries
