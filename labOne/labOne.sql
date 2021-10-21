SELECT *
FROM students;

SELECT first_name, last_name
FROM students;

SELECT first_name, last_name, points
FROM students
ORDER BY points ASC;

SELECT first_name, last_name, date_of_birth
FROM students
ORDER BY date_of_birth ASC;

SELECT DISTINCT hometown
from students;

SELECT first_name, last_name, points
FROM students
WHERE points >= 450;

SELECT first_name, last_name, points
FROM students
WHERE points = 525;

SELECT first_name, last_name, points
FROM students
WHERE points <> 525;

SELECT first_name, last_name, points
FROM students
WHERE points BETWEEN 400 AND 500;

SELECT first_name, last_name
FROM students
WHERE hometown = 'Cork';

SELECT first_name, last_name, date_of_birth
FROM students
WHERE date_of_birth <= '1997-01-01';

SELECT first_name, last_name
FROM students
WHERE date_of_birth BETWEEN '1994-10-01' AND '2012-10-01';

SELECT first_name, last_name
FROM students
WHERE date_of_birth = '1994-12-25';

SELECT *
FROM students
WHERE first_name = 'Ciara';

SELECT *
FROM students
WHERE first_name = 'ciara';

SELECT * 
FROM students
WHERE first_name OR last_name = 'Barry';

SELECT *
FROM students
WHERE first_name OR last_name = 'O''Kelly';

SELECT first_name, last_name, date_of_birth
FROM students
WHERE date_of_birth BETWEEN '1994-01-01' AND '1994-12-31';

