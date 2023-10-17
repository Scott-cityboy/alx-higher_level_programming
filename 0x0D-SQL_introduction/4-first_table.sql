#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement for creating the table
create_table_sql="CREATE TABLE IF NOT EXISTS first_table (
  id INT,
  name VARCHAR(256)
);"

# Run the MySQL command to create the table in the specified database
mysql -u your_username -p $database_name -e "$create_table_sql"

