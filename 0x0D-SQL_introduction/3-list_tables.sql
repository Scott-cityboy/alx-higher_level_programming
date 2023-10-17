#!/bin/bash

# Check if the database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name="$1"

# Run the MySQL command to list tables
mysql -u your_username -p -e "USE $database_name; SHOW TABLES;"

