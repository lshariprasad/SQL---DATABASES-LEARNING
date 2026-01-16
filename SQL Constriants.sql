-- Use the database
USE uber;

-- Drop table if it already exists
DROP TABLE IF EXISTS rides;

-- Create table with constraints
CREATE TABLE rides (
    ride_id INT NOT NULL,
    driver_id INT NOT NULL,
    rider_id INT NOT NULL,
    pickup_location VARCHAR(100) NOT NULL,
    dropoff_location VARCHAR(100) NOT NULL,
    ride_date DATETIME NOT NULL,
    fare DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (ride_id, rider_id)
);

DESC rides;

INSERT INTO rides (
    ride_id,
    driver_id,
    rider_id,
    pickup_location,
    dropoff_location,
    ride_date,
    fare
) VALUES (
    1,
    101,
    202,
    'Chennai',
    'Coimbatore',
    '2024-12-29 08:00:00',
    500.00
);

SELECT * FROM rides;

-- Users table
USE uber;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

INSERT INTO users (user_id, email) VALUES (1, 'user1@example.com');
INSERT INTO users (user_id, email) VALUES (2, 'user2@example.com');
INSERT INTO users (user_id, email) VALUES (3, NULL);
INSERT INTO users (user_id, email) VALUES (4, 'abc@gmail.com');
INSERT INTO users (user_id, email) VALUES (5, NULL);

SELECT * FROM users;

-- Drop and recreate rides (nullable rider_id)
DROP TABLE IF EXISTS rides;

CREATE TABLE rides (
    ride_id INT NOT NULL,
    driver_id INT NOT NULL,
    rider_id INT,
    pickup_location VARCHAR(100) NOT NULL,
    dropoff_location VARCHAR(100) NOT NULL,
    ride_date DATETIME NOT NULL,
    fare DECIMAL(10,2) NOT NULL
);

DESC rides;

INSERT INTO rides (
    ride_id,
    driver_id,
    rider_id,
    pickup_location,
    dropoff_location,
    ride_date,
    fare
) VALUES (
    1,
    101,
    300,
    'Chennai',
    'Coimbatore',
    '2024-12-29 08:00:00',
    500.00
);

SELECT * FROM rides;

-- Drop and recreate rides with CHECK constraint
DROP TABLE IF EXISTS rides;

CREATE TABLE rides (
    ride_id INT NOT NULL,
    driver_id INT NOT NULL,
    rider_id INT,
    pickup_location VARCHAR(100) NOT NULL,
    dropoff_location VARCHAR(100) NOT NULL,
    ride_date DATETIME NOT NULL,
    fare DECIMAL(10,2) CHECK (fare > 0)
);

INSERT INTO rides (
    ride_id,
    driver_id,
    rider_id,
    pickup_location,
    dropoff_location,
    ride_date,
    fare
) VALUES (
    1,
    101,
    300,
    'Chennai',
    'Coimbatore',
    '2024-12-29 08:00:00',
    100.00
);

SELECT * FROM rides;

-- Drop old tables
DROP TABLE IF EXISTS rides;
DROP TABLE IF EXISTS drivers;

-- Drivers table
CREATE TABLE drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(100),
    license_number VARCHAR(50) UNIQUE
);

-- Rides table with foreign key
CREATE TABLE rides (
    ride_id INT PRIMARY KEY,
    driver_id INT,
    pickup_location VARCHAR(100),
    dropoff_location VARCHAR(100),
    ride_date DATETIME,
    fare DECIMAL(10,2),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id) ON DELETE CASCADE
);

DESC drivers;
DESC rides;

INSERT INTO drivers (
    driver_id,
    driver_name,
    license_number
) VALUES
(101, 'Don', 'XYz125364'),
(102, 'Jane', 'ABC1256489');

INSERT INTO rides (
    ride_id,
    driver_id,
    pickup_location,
    dropoff_location,
    ride_date,
    fare
) VALUES
(301, 101, 'Chennai', 'Coimbatore', '2024-12-29 08:00:00', 500.00),
(302, 102, 'Chennai', 'Coimbatore', '2024-12-29 08:00:00', 500.00),
(303, 103, 'Chennai', 'Coimbatore', '2024-12-29 08:00:00', 500.00);

SELECT * FROM drivers;
SELECT * FROM rides;

ALTER TABLE rides ADD COLUMN is_delete BOOLEAN DEFAULT FALSE;

UPDATE rides SET is_delete = TRUE WHERE driver_id = 102;

-- Foreign key violation test (expected to fail)
INSERT INTO rides (
    ride_id,
    driver_id,
    pickup_location,
    dropoff_location,
    ride_date,
    fare
) VALUES (
    304,
    999,
    'Coimbatore',
    'Chennai',
    '2024-12-29 08:00:00',
    500.00
);

-- Delete driver
DELETE FROM drivers WHERE driver_id = 101;

-- Delete rides
DELETE FROM rides WHERE driver_id = 101;

-- Drop old tables
DROP TABLE IF EXISTS rides;
DROP TABLE IF EXISTS drivers;

-- Drivers table
CREATE TABLE drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(100),
    license_number VARCHAR(50) UNIQUE
);

-- Rides table with foreign key
CREATE TABLE rides (
    ride_id INT PRIMARY KEY,
    driver_id INT,
    pickup_location VARCHAR(100),
    dropoff_location VARCHAR(100),
    ride_date DATETIME,
    fare DECIMAL(10,2),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id) 
);

CREATE TABLE demo1 (sno INT, name VARCHAR(100) , country  VARCHAR(3) DEFAULT 'IND' );

SELECT * FROM demo1;

desc demo1;

INSERT INTO demo1 (sno, name) values (1, 'DEV');

INSERT INTO demo1 (sno, name, country) values (1, 'DEV','USA');