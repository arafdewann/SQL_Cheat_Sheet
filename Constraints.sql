
-- Add a unique constraint to a column
ALTER TABLE employees ADD CONSTRAINT unique_name UNIQUE (name);

-- Add a foreign key constraint
ALTER TABLE orders ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(id);

-- Drop a constraint
ALTER TABLE employees DROP CONSTRAINT unique_name;
