SELECT *
FROM countries;

--1
SELECT name, MAX(area)
FROM countries;

--2
SELECT name, MAX(population)
FROM countries
WHERE region = 'Africa';

--3
SELECT SUM(gdp)
FROM countries
WHERE region = 'Europe';

--4
-- SELECT name, population
-- FROM countries
-- WHERE gdp <0;

--5
SELECT name, gdp
FROM countries
WHERE gdp >0;

--6
SELECT region, AVG(gdp)
FROM countries
GROUP BY region; 

--7
-- ?

--8
SELECT region, MIN(gdp/population), MAX(gdp/population)
FROM countries
GROUP BY region;

--9
SELECT region, COUNT(name), SUM(population)
FROM countries
GROUP BY region;

--10
SELECT SUM(population), SUM(area), SUM(gdp)
FROM countries
WHERE region IN('Europe','Africa','Middle East');

--11
SELECT region, COUNT(name), population
FROM countries
WHERE population >100000000
GROUP BY region;

--12
SELECT DISTINCT(name)
FROM countries 
ORDER BY name ASC;

--13


