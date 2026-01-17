-- Create and use database
CREATE DATABASE IF NOT EXISTS de_project;
USE de_project;

-- Drop table if exists
DROP TABLE IF EXISTS CustomerData;

-- Create table
CREATE TABLE CustomerData (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    -- Use BIGINT for 10-digit phone numbers
    phone_number BIGINT,
    address VARCHAR(100),
    -- Use DECIMAL for currency/amounts
    amount DECIMAL(10, 2)
);

-- Insert data
INSERT INTO CustomerData (id, customer_name, email, phone_number, address, amount)
VALUES
(1, 'Ravi',  'ravi@gmail.com',   9876543210, 'Chennai',    6000.02),
(2, 'Priya', 'priya@gmail.com',  9876543211, 'Bangalore',  NULL),
(3, 'Devi',  'Devi@gmail.com',   NULL,       'Hyderabad', 15000.25),
(4, 'Meena', NULL,              NULL, 'Mumbai',     2500.65),
(5, 'Vijay', 'Vijay@gmail.com',  9512357862, NULL,         30000.35);

-- View table
SELECT * FROM CustomerData;

-- Categorize customers by spending
SELECT
    customer_name,
    amount,
    CASE
        WHEN amount > 10000 THEN 'High Spender'
        WHEN amount BETWEEN 6000 AND 10000 THEN 'Medium Spender'
        WHEN amount <= 3000 THEN 'Low Spender'
        ELSE 'No Data'
    END AS spending
FROM CustomerData;

-- Get contact info (phone if available, else email)
SELECT
    customer_name,
CASE
	WHEN email IS NULL AND phone_number IS NULL THEN '9999'
	WHEN phone_number IS NULL THEN email
	ELSE phone_number
END AS contact
FROM CustomerData;

SELECT * FROM CustomerData;

SELECT count(*) FROM CustomerData WHERE phone_number IS NOT NULL;

-- Insert data
INSERT INTO CustomerData (id, customer_name, email, phone_number, address, amount)
VALUES
(6, 'Hari',  'Hari@gmail.com',   9876543210, 'NULL',    6000.02),
(7, 'Krishna',  'Krishna@gmail.com',   9867543210, NULL,    6000.02);

SELECT count(*) FROM CustomerData WHERE address ='NULL';

SELECT
	id,
    customer_name,
    email,
    phone_number,
    address
FROM
	CustomerData
WHERE
	email IS NULL
	OR phone_number IS NULL
    OR address IS NULL;
    
SELECT 
	id,
    customer_name,
    amount,
    #COALESCE (amount, '0.00')
    IFNULL (amount, '0.00') --nvl 
FROM CustomerData;


