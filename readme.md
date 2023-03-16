# Sqoop Task
## Description
This scripts implement the incremental input in Sqoop. Incremental import is a technique that imports only the newly added rows in a table.
## Executing the scripts
- Run the load.sh script, using the following command:
```bash
bash load.sh
```
    - Description:
      - This script checks if the file exists in hdfs, if it exists then delete the existing files.
      - Runs a sql script for creating a table in mysql and populating it
      - If the above operation is successful then it run the import.sh script, which creates a sqoop job and executes it, therby adding the data present in the table in hdfs.
