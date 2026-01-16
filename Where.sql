-- 1. Create database
CREATE DATABASE IF NOT EXISTS uber;

-- 2. Use database
USE uber;

-- 3. Drop table if it already exists (clean start)
DROP TABLE IF EXISTS rides;

-- 4. Create table
CREATE TABLE rides (
    ride_id INT,
    driver_id INT,
    rider_id INT,
    pickup_location VARCHAR(100),
    dropoff_location VARCHAR(100),
    ride_data DATETIME,
    fare DECIMAL(10,2)
);


-- 5. Check table structure
DESCRIBE rides;

-- 6. Insert data (COLUMN NAMES MATCH TABLE EXACTLY)
INSERT INTO rides (
    ride_id,
    driver_id,
    rider_id,
    pickup_location,
    dropoff_location,
    ride_data,
    fare
)
VALUES
(1, 101, 201, 'Chennai', 'Coimbatore', '2024-12-29 08:00:00', 500.00),
(2, 101, 202, 'Bangalore', 'Hyderabad', '2024-12-29 10:00:00', 800.00),
(3, 101, 203, 'Chennai', 'Madurai', '2024-12-29 12:00:00', 400.00),
(4, 101, 204, 'Coimbatore', 'Chennai', '2024-12-29 14:00:00', 600.00),
(5, 101, 205, 'Bangalore', 'Coimbatore', '2024-12-29 16:00:00', 700.00);

-- 7. View inserted data
SELECT * FROM uber.rides;

-- 8. Which the fare is high than 500 rs.
SELECT * FROM rides
WHERE fare > '500.00' and dropoff_location = 'chennai'
ORDER by fare asc;

-- 9.Output
DESC rides