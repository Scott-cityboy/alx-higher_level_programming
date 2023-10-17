#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to retrieve table structure
table_structure_sql="SELECT COLUMN_NAME, DATA_TYPE, COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = '$database_name' AND TABLE_NAME = 'first_table';"

# Run the MySQL command to retrieve the table structure
mysql -u your_username -p -e "$table_structure_sql" $database_name

