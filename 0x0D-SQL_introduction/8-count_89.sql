#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to count the records with id = 89
count_records_sql="SELECT COUNT(*) FROM $database_name.first_table WHERE id = 89;"

# Run the MySQL command to count the records
mysql -u your_username -p -e "$count_records_sql" $database_name

