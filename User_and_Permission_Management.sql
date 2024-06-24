
-- Create a new user
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';

-- Grant privileges to a user
GRANT SELECT, INSERT, UPDATE, DELETE ON my_database.* TO 'new_user'@'localhost';

-- Revoke privileges from a user
REVOKE SELECT, INSERT, UPDATE, DELETE ON my_database.* FROM 'new_user'@'localhost';

-- Drop a user
DROP USER 'new_user'@'localhost';
