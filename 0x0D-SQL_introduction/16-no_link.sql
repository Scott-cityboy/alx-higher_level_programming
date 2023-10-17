#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to select and list records with a non-empty name, ordered by descending score
list_records_sql="SELECT score, name FROM $database_name.second_table WHERE name IS NOT NULL AND name <> '' ORDER BY score DESC;"

# Run the MySQL command to select and list the records
mysql -u your_username -p -e "$list_records_sql" $database_name

