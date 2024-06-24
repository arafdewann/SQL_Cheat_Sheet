
-- Insert a new row into a table
INSERT INTO employees (name, position, salary) VALUES ('John Doe', 'Developer', 60000.00);

-- Update existing rows in a table
UPDATE employees SET salary = 65000.00 WHERE name = 'John Doe';

-- Delete rows from a table
DELETE FROM employees WHERE name = 'John Doe';

-- Select data from a table
SELECT * FROM employees;

-- Select specific columns from a table
SELECT name, position FROM employees;

-- Select with a condition
SELECT * FROM employees WHERE salary > 50000.00;
