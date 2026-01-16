# This is DDL - Data Definition Language

USE de_project;

DROP TABLE if exists employees;
CREATE TABLE employees (
	employeeID INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);

desc employees;


ALTER TABLE employees
ADD Email VARCHAR(100);

desc employees;

ALTER TABLE employees DROP column lastname;

desc employees;

ALTER TABLE employees RENAME to emp_123;

desc emp_123;

