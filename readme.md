# Sqoop Task
*Note: This task was assigned to me by our Big Data trainer and present it in the class*
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
- Run the update_db.sh script, using the following command:
```bash
bash update_db.sh
```
    - Description
        - This script adds two new records in the sql table and,
        - Updates the data present in hdfs with newly update rows from the sql table. 
