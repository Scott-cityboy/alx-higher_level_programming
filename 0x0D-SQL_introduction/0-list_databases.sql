#!/bin/bash

# MySQL server connection parameters
MYSQL_USER="username"
MYSQL_PASSWORD="password"

# Use the mysql command to list databases
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "SHOW DATABASES;"

