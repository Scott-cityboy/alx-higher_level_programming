#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to remove records with score <= 5
remove_records_sql="DELETE FROM $database_name.second_table WHERE score <= 5;"

# Run the MySQL command to remove the records
mysql -u your_username -p -e "$remove_records_sql" $database_name

