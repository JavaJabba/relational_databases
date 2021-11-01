-- view
SELECT * 
FROM persons;

SELECT *
FROM likes;

--1
SELECT *
FROM persons
WHERE first_name LIKE "A%";

--2
SELECT * 
FROM persons
WHERE first_name LIKE "%A";

--3
SELECT *
FROM persons 
WHERE first_name LIKE "%A%";

--4
SELECT * 
FROM persons
WHERE first_name LIKE "_____";

--5
SELECT *
FROM persons
WHERE street LIKE "%street%";

--6
SELECT *
FROM likes
WHERE food LIKE "% %";

--7
SELECT *
FROM likes
WHERE food LIKE "%te%";

--8
SELECT * 
FROM persons CROSS JOIN likes;

--9
-- SELECT * 
-- FROM persons CROSS JOIN likes;

--10
SELECT *
FROM persons JOIN likes
    ON persons.person_id = likes.person_id
    WHERE first_name = 'Aoife' AND last_name = 'Ahern';

--11
SELECT first_name, last_name, food
FROM persons JOIN likes
    ON persons.person_id = likes.person_id
    WHERE county = 'Cork';

--12
SELECT DISTINCT(food)
FROM persons JOIN likes
    ON persons.person_id = likes.person_id
    WHERE gender = 'F';

--13
SELECT first_name, last_name
FROM persons JOIN likes
    ON persons.person_id = likes.person_id
    WHERE food = 'Pizza';

--14
SELECT DISTINCT(town)
FROM persons JOIN likes
    ON persons.person_id = likes.person_id
    WHERE food = 'Beer';

--15
SELECT *
FROM likes CROSS JOIN likes AS l1;

--16
