USE de_project;

DROP TABLE IF EXISTS regex;

CREATE TABLE regex
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    sample_text VARCHAR(100)
);

INSERT INTO regex (
sample_text
) 
VALUES
('apple'),
('Banana'),
('cherry'),
('date'),
('elderberry'),
('fig'),
('grape'),
('honeydew'),
('running'),
('123abc');

SELECT * FROM regex;

# It Will Hepls to Find the Letter (The Starting Letter Only)
SELECT * 
FROM regex
WHERE sample_text REGEXP '^a';

# It Will Hepls to Find the Letter (The Ending Letter Only)
SELECT *
FROM regex
WHERE sample_text REGEXP 'e$';

# It Will Hepls to Find the Number 
SELECT *
FROM regex
WHERE sample_text REGEXP '^[0-9]';

# It Will Hepls to Find the word grammer 
SELECT *
FROM regex
WHERE sample_text REGEXP 'ing$';
# It Will Hepls to Find The Two same letter in a word, Its Should be continuos
SELECT *
FROM regex
WHERE sample_text REGEXP '(.)\\1';

## It's Used To Make the letter all ( CAPITAL LETTERS into small letters ) In That Word
SELECT *
FROM regex
WHERE sample_text REGEXP '^[A-Za-z]+$';

# It's to find the index of string by the given number
SELECT *
FROM regex
WHERE sample_text REGEXP '^.{5}&';

# Only Wanted To Find  apple or banana
SELECT * 
FROM regex
WHERE sample_text REGEXP '^(apple|banana)$';

SELECT * 
FROM regex
WHERE sample_text REGEXP '^[0-9]{3}[A-Za-z]+$';

