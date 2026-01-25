USE de_project;

DROP TABLE IF EXISTS events;

CREATE TABLE events (
	event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR (100),
    event_date DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO events(
event_name,
event_date
)
VALUES 
('Team Meeting', 	'2025-01-15 10:30:00'),
('Conference',	    '2025-02-10 09:00:00'),
('Online Webinar',  '2025-03-05 15:45:00'),
('Workshop',  		'2025-03-20 13:30:00');

SELECT * FROM events;

SELECT  event_id, event_name,event_date, day(event_date) AS event_year FROm events;


SELECT event_id, event_name, event_date, event_date + INTERVAL 30 DAY AS date_plus_30 FROM events;

SELECT event_id, event_name, DATE_FORMAT(event_date, '%W, %M %e %Y') AS formatted_date FROM events;

SELECT event_id, event_name, DATE_FORMAT(event_date, '%h: %i %p') AS time_12h_format FROM events;