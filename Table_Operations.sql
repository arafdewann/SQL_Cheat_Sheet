
-- Create a new table
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Drop an existing table
DROP TABLE employees;

-- Alter an existing table to add a new column
ALTER TABLE employees ADD COLUMN department VARCHAR(50);

-- Alter an existing table to drop a column
ALTER TABLE employees DROP COLUMN department;

-- Rename an existing table
ALTER TABLE employees RENAME TO staff;
