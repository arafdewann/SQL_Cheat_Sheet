-- MD ARAFAT KOYES 
-- SQL Cheat Sheet: Top 50 SQL Commands and Their Uses

-- 1. CREATE DATABASE: Creates a new database
CREATE DATABASE my_database;

-- 2. USE: Selects a database to use
USE my_database;

-- 3. CREATE TABLE: Creates a new table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- 4. DROP TABLE: Deletes a table
DROP TABLE employees;

-- 5. ALTER TABLE: Modifies a table structure
ALTER TABLE employees ADD COLUMN hire_date DATE;

-- 6. INSERT INTO: Inserts new data into a table
INSERT INTO employees (id, name, position, salary) VALUES (1, 'John Doe', 'Manager', 60000);

-- 7. SELECT: Retrieves data from a table
SELECT * FROM employees;

-- 8. WHERE: Filters records
SELECT * FROM employees WHERE salary > 50000;

-- 9. UPDATE: Updates existing data within a table
UPDATE employees SET salary = 65000 WHERE id = 1;

-- 10. DELETE: Deletes data from a table
DELETE FROM employees WHERE id = 1;

-- 11. ORDER BY: Sorts the result set
SELECT * FROM employees ORDER BY name;

-- 12. GROUP BY: Groups rows that have the same values
SELECT position, COUNT(*) FROM employees GROUP BY position;

-- 13. HAVING: Filters groups
SELECT position, COUNT(*) FROM employees GROUP BY position HAVING COUNT(*) > 1;

-- 14. JOIN: Combines rows from two or more tables
-- INNER JOIN: Returns records with matching values in both tables
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;

-- 15. LEFT JOIN: Returns all records from the left table, and the matched records from the right table
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.id;

-- 16. RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.id;

-- 17. FULL JOIN: Returns all records when there is a match in either left or right table
SELECT employees.name, departments.department_name
FROM employees
FULL OUTER JOIN departments ON employees.department_id = departments.id;

-- 18. UNION: Combines the result sets of two or more SELECT statements
SELECT name FROM employees
UNION
SELECT name FROM customers;

-- 19. UNION ALL: Combines the result sets of two or more SELECT statements, including duplicates
SELECT name FROM employees
UNION ALL
SELECT name FROM customers;

-- 20. SUBQUERY: A query within another query
SELECT name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- 21. EXISTS: Tests for the existence of any record in a subquery
SELECT name FROM employees WHERE EXISTS (SELECT * FROM departments WHERE employees.department_id = departments.id);

-- 22. BETWEEN: Filters the result set within a certain range
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 70000;

-- 23. LIKE: Searches for a specified pattern in a column
SELECT * FROM employees WHERE name LIKE 'J%';

-- 24. IN: Checks for values within a set
SELECT * FROM employees WHERE department_id IN (1, 2, 3);

-- 25. DISTINCT: Returns only distinct (different) values
SELECT DISTINCT position FROM employees;

-- 26. COUNT: Returns the number of rows
SELECT COUNT(*) FROM employees;

-- 27. SUM: Returns the total sum of a numeric column
SELECT SUM(salary) FROM employees;

-- 28. AVG: Returns the average value of a numeric column
SELECT AVG(salary) FROM employees;

-- 29. MIN: Returns the smallest value of a selected column
SELECT MIN(salary) FROM employees;

-- 30. MAX: Returns the largest value of a selected column
SELECT MAX(salary) FROM employees;

-- 31. CASE: Adds if-else logic to SQL queries
SELECT name,
       salary,
       CASE
           WHEN salary > 50000 THEN 'High'
           ELSE 'Low'
       END AS salary_level
FROM employees;

-- 32. COALESCE: Returns the first non-null value in a list
SELECT name, COALESCE(phone, 'N/A') AS contact_phone FROM employees;

-- 33. NULLIF: Returns NULL if the first value equals the second value
SELECT NULLIF(salary, 0) FROM employees;

-- 34. CAST: Converts a value from one data type to another
SELECT CAST(salary AS CHAR) FROM employees;

-- 35. CONVERT: Converts a value from one data type to another
SELECT CONVERT(VARCHAR, salary) FROM employees;

-- 36. ROUND: Rounds a numeric field to the number of decimals specified
SELECT ROUND(salary, 2) FROM employees;

-- 37. TRUNCATE: Removes decimal places from a number
SELECT TRUNCATE(salary, 0) FROM employees;

-- 38. DATE Functions: Extracts parts of a date or time value
SELECT YEAR(hire_date) FROM employees;

-- 39. GETDATE: Returns the current date and time
SELECT GETDATE();

-- 40. DATEADD: Adds or subtracts a specified time interval from a date
SELECT DATEADD(day, 10, hire_date) FROM employees;

-- 41. DATEDIFF: Returns the difference between two dates
SELECT DATEDIFF(day, '2024-01-01', GETDATE());

-- 42. NOW: Returns the current date and time (MySQL)
SELECT NOW();

-- 43. SYSDATE: Returns the current date and time (Oracle)
SELECT SYSDATE FROM dual;

-- 44. CURDATE: Returns the current date (MySQL)
SELECT CURDATE();

-- 45. CASE WHEN: Conditional statement
SELECT name,
       CASE WHEN salary > 50000 THEN 'High Salary' ELSE 'Low Salary' END AS salary_level
FROM employees;

-- 46. IFNULL: Returns a specified value if the expression is NULL (MySQL)
SELECT name, IFNULL(phone, 'No Phone') FROM employees;

-- 47. ISNULL: Returns a specified value if the expression is NULL (SQL Server)
SELECT name, ISNULL(phone, 'No Phone') FROM employees;

-- 48. NVL: Returns a specified value if the expression is NULL (Oracle)
SELECT name, NVL(phone, 'No Phone') FROM employees;

-- 49. CONCAT: Concatenates two or more strings
SELECT CONCAT(name, ' - ', position) AS employee_details FROM employees;

-- 50. LENGTH: Returns the length of a string
SELECT LENGTH(name) FROM employees;
