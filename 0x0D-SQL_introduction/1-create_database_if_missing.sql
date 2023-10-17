-- Check if the database exists
SET @db_name = 'hbtn_0c_0';
SET @db_exists = (SELECT COUNT(*) FROM information_schema.schemata WHERE schema_name = @db_name);

-- Create the database if it doesn't exist
IF @db_exists = 0 THEN
    CREATE DATABASE hbtn_0c_0;
    SELECT 'Database hbtn_0c_0 created.';
ELSE
    SELECT 'Database hbtn_0c_0 already exists.';
END IF;

