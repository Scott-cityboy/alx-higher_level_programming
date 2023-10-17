#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to select all rows from the table
select_rows_sql="SELECT * FROM $database_name.first_table;"

# Run the MySQL command to select and list all rows
mysql -u your_username -p -e "$select_rows_sql" $database_name

