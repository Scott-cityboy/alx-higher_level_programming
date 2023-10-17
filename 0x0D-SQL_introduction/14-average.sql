#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to compute the average score
average_score_sql="SELECT AVG(score) AS average FROM $database_name.second_table;"

# Run the MySQL command to compute the average score
mysql -u your_username -p -e "$average_score_sql" $database_name

