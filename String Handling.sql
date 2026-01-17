USE de_project;

DROP TABLE IF EXISTS CD;

CREATE TABLE CD (
    id INT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(100),
    phone_number BIGINT
);

SELECT * FROM CD;

INSERT INTO CD (
    id,
    customer_name,
    email,
    city,
    phone_number
)
VALUES
(1, 'Vijay',   'Krishna@gmail.com', 'Chennai',   43250),
(2, 'Krishna', 'Krishna@gmail.com', 'Bangalore', 43250),
(3, 'Dev',     'Dev@gmail.com',     'Mumbai',    43250),
(4, 'Suji',    'Suji@gmail.com',    'Hyderabad', 43250),
(5, 'Sathish', 'Sathish@gmail.com', 'Chennai',   43250);

SELECT * FROM CD;

SELECT length (customer_name) as name_length,
upper(city) as city_upper,
lower(customer_name) as cust_lower,
concat(customer_name,' - ',city,' - ','TN') as name_c,
SUBSTRING(customer_name, 1, 7) AS name_prefix,
TRIM('  chennai  ') AS trimmed_city,
LPAD(customer_name, 15, '*') AS left_padded_name,
RPAD(customer_name, 15, '*') AS right_padded_name,
REPLACE(customer_name, ' ', '_') AS updated_name,
INSTR(customer_name, 'a') AS position_of_a,
LEFT(customer_name, 5) AS first_5_chars,
RIGHT(customer_name, 5) AS first_5_chars,
FORMAT(9876543210, 2 ) AS formatted_number,
length(upper(CONCAT(customer_name,'-',city,'-','TN'))) AS name_c

FROM CD;

