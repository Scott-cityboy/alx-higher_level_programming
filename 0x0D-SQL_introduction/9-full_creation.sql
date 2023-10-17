#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to create the second_table if it doesn't exist
create_table_sql="CREATE TABLE IF NOT EXISTS $database_name.second_table (
  id INT,
  name VARCHAR(256),
  score INT
);"

# Define the SQL statements to insert the records
insert_record1_sql="INSERT INTO $database_name.second_table (id, name, score) VALUES (1, 'John', 10);"
insert_record2_sql="INSERT INTO $database_name.second_table (id, name, score) VALUES (2, 'Alex', 3);"
insert_record3_sql="INSERT INTO $database_name.second_table (id, name, score) VALUES (3, 'Bob', 14);"
insert_record4_sql="INSERT INTO $database_name.second_table (id, name, score) VALUES (4, 'George', 8);"

# Run the MySQL commands to create the table and insert records
mysql -u your_username -p -e "$create_table_sql" $database_name
mysql -u your_username -p -e "$insert_record1_sql" $database_name
mysql -u your_username -p -e "$insert_record2_sql" $database_name
mysql -u your_username -p -e "$insert_record3_sql" $database_name
mysql -u your_username -p -e "$insert_record4_sql" $database_name

