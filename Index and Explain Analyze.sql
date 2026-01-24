USE de_project;

DROP TABLE IF EXISTS customer;

CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

CREATE INDEX idx_email ON customer (email);

INSERT INTO customers (
	first_name,
    last_name,
    email,
    city
)
VALUES 
('Dev','Krishna','Dev@example.com','New York'),
('Hari','Prasad','Hari@exmapl.com','Chicago'),
('Sri','Vasavi','sri@example.com','Houston');

SELECT * FROM customers;


SELECT * FROM customers where email='sri@example.com';

EXPLAIN
SELECT * 
FROM customers 
where email='sri@example.com';

EXPLAIN ANALYZE
SELECT * 
FROM customers 
where email='sri@example.com';

EXPLAIN FORMAT  =JSON
SELECT * 
FROM customers 
where email='sri@example.com';