#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to insert a new row
insert_row_sql="INSERT INTO $database_name.first_table (id, name) VALUES (89, 'Best School');"

# Run the MySQL command to insert the new row
mysql -u your_username -p -e "$insert_row_sql" $database_name

