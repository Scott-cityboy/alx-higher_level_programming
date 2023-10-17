-- Check if the database exists
SET @db_name = 'hbtn_0c_0';
SET @db_exists = (SELECT COUNT(*) FROM information_schema.schemata WHERE schema_name = @db_name);

-- Drop the database if it exists
IF @db_exists > 0 THEN
    DROP DATABASE hbtn_0c_0;
    SELECT 'Database hbtn_0c_0 deleted.';
ELSE
    SELECT 'Database hbtn_0c_0 does not exist, nothing to delete.';
END IF;

