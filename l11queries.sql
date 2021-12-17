-- For UNION, INTERSECT and EXCEPT SQlite does not allow 
-- parentheses around subqueries, but MySQL does. Those
-- quries featuring these keywords are given below in 
-- both forms for convenience.ord

/* ids of films with HB */
(   SELECT movieid
   FROM actors JOIN castings
   ON actors.id = castings.actorid
   WHERE actors.name = 'Humphrey Bogart'
)
INTERSECT
( /* ids of films with KH */
   SELECT movieid
   FROM actors JOIN castings
   ON actors.id = castings.actorid
   WHERE actors.name = 'Katharine Hepburn'
);

/* ids of films with HB */
   SELECT movieid
   FROM actors JOIN castings
   ON actors.id = castings.actorid
   WHERE actors.name = 'Humphrey Bogart'
INTERSECT
/* ids of films with KH */
   SELECT movieid
   FROM actors JOIN castings
   ON actors.id = castings.actorid
   WHERE actors.name = 'Katharine Hepburn'
;

(  SELECT id
   FROM actors
   WHERE name LIKE 'Jack%'
)
UNION
(
   SELECT actorid AS id
   FROM castings
   GROUP BY actorid
   HAVING COUNT(*) >= 10
);

   SELECT id
   FROM actors
   WHERE name LIKE 'Jack%'
UNION
   SELECT actorid AS id
   FROM castings
   GROUP BY actorid
   HAVING COUNT(*) >= 10
;

(SELECT title
   FROM movies
   WHERE yr BETWEEN 1960 AND 1969 ) AS t1
UNION
(SELECT title
   FROM movies
   WHERE score >= 8.0)AS t2;

SELECT title
   FROM movies
   WHERE yr BETWEEN 1960 AND 1969 
UNION
SELECT title
   FROM movies
   WHERE score >= 8.0;

SELECT title 
FROM movies 
WHERE 
   yr BETWEEN 1960 AND 1969 
   OR score >= 8.0;
   
SELECT title, score
FROM movies
WHERE score =
(  SELECT MAX(score)
      FROM movies
);

SELECT title, MAX(score)
FROM movies;

SELECT title, MAX(score), MIN(score)
FROM movies;

SELECT actorid
FROM castings
WHERE movieid =
(  SELECT id
   FROM movies
   WHERE title = 'Godfather, The'
);

SELECT title, score
FROM movies
WHERE score >
(  SELECT score
   FROM movies
   WHERE title = 'Sound of Music, The'
);

SELECT name 
FROM actors 
WHERE id IN
(  /* ids of actors in "The Godfather" */
   SELECT actorid FROM castings
   WHERE movieid =
   (  /* id of "The Godfather" */
      SELECT id FROM movies
      WHERE title = 'Godfather, The'
   )
); 

SELECT *
FROM movies
WHERE director =
(  SELECT director
   FROM movies
   WHERE title =
   (  SELECT MAX(title)
      FROM movies
   )
);

SELECT MAX(num_films)
FROM
(  SELECT actorid, COUNT(movieid) AS 'num_films'
   FROM castings
   GROUP BY actorid
)  AS film_counts;

SELECT name, COUNT(*)
FROM actors AS a
   JOIN castings AS c
      ON a.id = c.actorid
GROUP BY a.id
HAVING COUNT(*) = 
(
   SELECT MAX(num_films)
   FROM
   (  SELECT actorid, COUNT(movieid) AS 'num_films'
      FROM castings
      GROUP BY actorid
   )  AS film_counts
);

SELECT title, yr FROM movies
WHERE id IN
(  /* ids of movies with Meryl Streep and Clint Eastwood */
   SELECT movieid FROM castings
   WHERE 
      actorid =
      (  /* Meryl Streep's id */
         SELECT id FROM actors
         WHERE name = 'Meryl Streep'
      ) 
      AND
      movieid IN 
      (  /* ids of movies with Clint Eastwood */
         SELECT movieid FROM castings
         WHERE actorid = 
         (  /* Clint Eastwood's id */
            SELECT id FROM actors
            WHERE name = 'Clint Eastwood'
         )
      )
);





