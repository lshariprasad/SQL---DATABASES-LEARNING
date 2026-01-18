-- 1. Create database
CREATE DATABASE IF NOT EXISTS de_project;

-- 2. Use database
USE de_project;

-- 3. Drop table if it already exists (clean start)
DROP TABLE IF EXISTS Restaurants;

-- 4. Create Restaurants table
CREATE TABLE Restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- Insert data into Restaurants
INSERT INTO Restaurants (id, name, location)
VALUES
(1, 'ABC Bistro', 'New York'),
(2, 'The Foodie', 'Los Angeles'),
(3, 'Tasty Treat', 'Chicago');

-- 5. Check table structure
DESCRIBE Restaurants;

-- 6. Drop Orders table if it already exists
DROP TABLE IF EXISTS Orders;

-- 7. Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    restaurant_id INT NOT NULL,
    order_date DATE NOT NULL
);

-- Insert data into Orders
INSERT INTO Orders (order_id, restaurant_id, order_date)
VALUES
(1, 1, '2023-01-01'),
(2, 1, '2023-01-02'),
(3, 2, '2023-01-05'),
(4, 4, '2023-01-07');

-- 8. Join Restaurants and Orders
SELECT
    r.id,
    r.name,
    r.location,
    o.order_id,
    o.order_date
FROM Restaurants r
JOIN Orders o
ON r.id = o.restaurant_id;

-- Left Side Of Joint :
SELECT
    r.name AS restaurant_name,
    o.order_date
FROM Restaurants r
LEFT JOIN Orders o
ON r.id = o.restaurant_id;

-- Right Side Of Joint :

SELECT
    r.name AS restaurant_name,
    o.order_date
FROM Restaurants r
RIGHT JOIN Orders o
ON r.id = o.restaurant_id;

-- INTERVEIW QUESTION :

DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees
(	
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    manager_id INT NULL
);

INSERT INTO Employees
(
    id,
    name,
    manager_id
) 
VALUES 
(1, 'Alice', 3),
(2, 'Bob', 3),
(3, 'Charlie', NULL),
(4, 'Diana', 3);

SELECT * FROM Employees;

SELECT
	e.name AS employee_name,
    m.name AS manager_name
FROM Employees e
LEFT JOIN Employees m
	ON e.manager_id = m.id;