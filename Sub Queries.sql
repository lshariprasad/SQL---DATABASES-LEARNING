USE de_project;

DROP TABLE IF EXISTS NC;

CREATE TABLE NC (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100),
    order_amount DECIMAL(10,2)
);

INSERT INTO NC (
    customer_id,
    customer_name,
    order_amount,
    city
)
VALUES
(1, 'Suji',   5000.00,  'Mumbai'),
(2, 'Dev',    8000.00,  'Bangalore'),
(3, 'Vijay',  10000.00, 'Hyderabad'),
(4, 'Anitha', 9000.00,  'Vellore'),
(5, 'Meena',  7000.00,  'Chennai');

SELECT * FROM NC;

-- Subquery example (correct table name)
SELECT
    customer_name,
    (SELECT MAX(order_amount) FROM NC) AS max_order_amount
FROM NC;

SELECT customer_name
FROM NC
WHERE customer_id IN (
    SELECT DISTINCT customer_id
    FROM NC
    WHERE order_amount > 5000
);

SELECT DISTINCT customer_id
FROM NC
WHERE order_amount > 5000;
    
SELECT customer_name
FROM NC
WHERE EXISTS (
    SELECT * FROM NC WHERE city = 'chennai'
);


SELECT customer_name
FROM NC
WHERE EXISTS (
    SELECT * FROM NC WHERE city = 'Karur'
);


-- Corrected final query (Correlated Subquery)
SELECT
    c.customer_name,
    c.city,
    (
        SELECT SUM(o.order_amount)
        FROM NC o
        WHERE o.customer_id = c.customer_id
    ) AS total_orders
FROM NC c;

SELECT
    c.customer_name,
    CASE
        WHEN (
            SELECT SUM(n.order_amount)
            FROM NC n
            WHERE n.customer_id = c.customer_id
        ) >
        (
            SELECT AVG(order_amount)
            FROM NC
        )
        THEN 'Above Average'
        ELSE 'Below Average'
    END AS order_category
FROM NC c;



