SELECT *
FROM movies;

SELECT *
FROM castings;

SELECT *
FROM actors;

--1
SELECT COUNT(name), COUNT(title)
FROM movies JOIN actors;

--2
SELECT COUNT(title)
FROM movies
WHERE yr = '1975';

--3
SELECT movieid
FROM movies JOIN actors JOIN castings
    ON movies.id = castings.movieid AND actors.id = castings.actorid
WHERE name = 'Clint Eastwood';

--4
SELECT title, yr
FROM movies JOIN actors JOIN castings
    ON movies.id = castings.movieid AND actors.id = castings.actorid
WHERE name = 'Clint Eastwood'
ORDER BY yr ASC;

--5
SELECT name
FROM movies JOIN actors JOIN castings
    ON movies.id = castings.movieid AND actors.id = castings.actorid
WHERE title = 'Citizen Kane';

--6
SELECT name
FROM movies JOIN actors JOIN castings
    ON movies.id = castings.movieid AND actors.id = castings.actorid
WHERE title = 'Veritgo' OR 'Rear Window';

--7
SELECT title
FROM movies
WHERE director = '28';

--8

SELECT title
FROM movies
WHERE director IN
(   SELECT director
    FROM movies
    WHERE title = 'Godfather, The'
);

--9
SELECT name, yr
FROM movies
WHERE 
