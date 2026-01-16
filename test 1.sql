-- 1. Show existing databases
SHOW DATABASES;

-- 2. Create database safely (won't error if it already exists)
CREATE DATABASE IF NOT EXISTS dev_project;

-- 3. Select the database
USE dev_project;

-- 4. Confirm current database
SELECT DATABASE();

-- 5. Create table
CREATE TABLE IF NOT EXISTS test (
    sno INT,
    name VARCHAR(100)
);

-- 6. Show tables in dev_project
SHOW TABLES;

-- 7. Insert data
INSERT INTO test (sno, name)
VALUES (1, 'dev');

-- 8. View table data
SELECT * FROM test;
