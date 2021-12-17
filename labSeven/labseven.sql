SELECT * FROM countries;

--1
SELECT name, population
FROM cities
ORDER BY population DESC LIMIT 20;

--2
SELECT countries.name, COUNT(cities.country_code)
FROM countries JOIN cities
    ON countries.code = cities.country_code
WHERE cities.population >= 1000000
GROUP BY country_code
HAVING COUNT(cities.country_code) >= 5;

--3
SELECT name
FROM countries
WHERE indep_year >
    ( SELECT indep_year
      FROM countries
      WHERE name = 'India');

--4
-- SELECT language
-- FROM country_languages
-- WHERE percentage 
--     (SELECT COUNT(language)
--     FROM country_languages
--     WHERE 
--     );

--5
-- SELECT name
-- FROM countries AS c1
-- WHERE 20 >=
--     (SELECT COUNT(*) FROM countries AS c2
--     WHERE c2.life_expectancy < c1.life_expectancy
--     INTERSECT
--     SELECT COUNT(*) FROM AS c3
--     WHERE c2.gnp < c1.gnp);

--6
SELECT name
FROM countries
WHERE surface_area >= 0.1 *
    (SELECT SUM(surface_area)
    FROM countries
    ORDER BY region
    );

--7
-- SELECT gnp
-- FROM countries
-- WHERE gnp =
--     (
--     SELECT SUM(gnp)
--     FROM countries
--     ORDER BY gnp DESC LIMIT 20
--     )
--     /
--     (
--     SELECT SUM(gnp)
--     FROM countries
--     );

--8

     