#!/bin/bash

sqoop import --connect jdbc:mysql://localhost:3306/test --driver com.mysql.jdbc.Driver --username root --password cloudera --table salaries
