#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Define the SQL statement to list the scores and the number of records for each score
list_scores_sql="SELECT score, COUNT(*) AS number FROM $database_name.second_table GROUP BY score ORDER BY number DESC, score;"

# Run the MySQL command to list the scores and the number of records
mysql -u your_username -p -e "$list_scores_sql" $database_name

