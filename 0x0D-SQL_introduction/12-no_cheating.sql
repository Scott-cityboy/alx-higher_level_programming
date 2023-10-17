#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to update the score for the record with name "Bob"
update_score_sql="UPDATE $database_name.second_table SET score = 10 WHERE name = 'Bob';"

# Run the MySQL command to update the record
mysql -u your_username -p -e "$update_score_sql" $database_name

