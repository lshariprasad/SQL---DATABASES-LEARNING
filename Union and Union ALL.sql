USE de_project;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS contractors;

CREATE TABLE employees (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE contractors (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    hourly_rate DECIMAL(10,2)
);

INSERT INTO employees (
	first_name,
    last_name,
    position,
    salary
)
VALUES 
('Dev','Krishna','MoneyMaker',800000.00),
('Hari','Prasad','Million',9900000.00),
('Sri','Vasavi','Music',6980000.00);

INSERT INTO contractors (
	first_name,
    last_name,
    position,
    hourly_rate
)
VALUES 
('Dave','William','Developer',40.00),
('Eve','Brownn','Tester',35.00),
('Sri','Vasavi','Music',4500.00);

SELECT * FROM employees;

SELECT * FROM contractors;

SELECT * FROM employees
UNION ALL
SELECT * FROM contractors;