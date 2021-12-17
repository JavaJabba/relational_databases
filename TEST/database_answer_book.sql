--
--                CS1106/CS6503 Examination
--                Friday, 17 December 2021
--

-- Student Number:
-- Place X in box if registestered with DSS: [ ]

--                  Student Declaration
-- ==================================================================

-- This is to certify that the work I am submitting is my own and has 
-- been done by me solely and not in consultation with anyone else. 
-- Neither I nor anyone else have submitted this work for assessment, 
-- either at University College Cork or elsewhere. I have read and 
-- understood the regulations of University College Cork concerning 
-- plagiarism.  Where breaches of the declaration are detected, these 
-- will be reviewed under UCC student conduct and plagiarism policies. 
-- Any breach of the examination rules is a serious issue and can incur 
-- penalties.

-- ALL ANSWERS SUBMITTED WILL BE CHECKED FOR COMPLIANCE WITH UNIVERSITY
-- PLAGIARISM POLICY.

-- ==================================================================
-- QUESTION ONE
-- ------------------------------------------------------------------
-- Part (i) 
-- see scanned image
-- ...................................................................


-- Part (ii)
-- see scanned image
-- ...................................................................

-- ==================================================================
-- QUESTION TWO
-- ------------------------------------------------------------------
-- Part (i) 
-- ...................................................................
-- CREATE TABLE children (
--     child_id int,
--     first_name varchar(255),
--     last_name varchar(255),
--     dob date,
--     gender varchar(255),
--     niceness int
-- );

-- INSERT INTO children (child_id, first_name, last_name, dob, gender, niceness)
-- VALUES 
--     (1, 'Josh', 'Dean', '2015/01/24', 'Male', 1.00),
--     (2, 'Alannah', 'Kelly', '2019/07/12', 'Female', 0.50),
--     (3, 'Charlotte', 'McGrath', '2010/09/10', 'Non-Binary', 0.20);

-- Part (ii)
-- ...................................................................
-- DELETE FROM children
-- WHERE niceness < 0.25;

-- Part (iii) 
-- ...................................................................
-- UPDATE children
-- SET niceness = niceness - 0.1
-- WHERE gender = 'Male';

-- Part (iv)
-- ...................................................................
-- SELECT first_name, last_name, niceness
-- FROM children
-- WHERE dob > '2011/12/2011';

-- Part (v) 
-- ...................................................................
-- SELECT COUNT(gender)
-- FROM children
-- WHERE gender = 'Male'
-- UNION
-- SELECT COUNT(gender)
-- FROM children 
-- WHERE gender = 'Female';

-- ==================================================================
-- QUESTION THREE
-- ------------------------------------------------------------------
-- Part (i) 
-- ...................................................................
-- SELECT name
-- FROM countries
-- WHERE code =
--     (SELECT country_code
--     FROM country_languages
--     WHERE language = 'French'
--     INTERSECT
--     SELECT percentage
--     FROM country_languages
--     WHERE percentage >= 25
--     );

-- Part (ii)
-- ...................................................................
SELECT COUNT(id), countries.continent
FROM cities JOIN countries
WHERE country_code = 
    (SELECT code 
     FROM countries
     WHERE population > 5000000    
    )
GROUP BY countries.continent
;
-- Part (iii) 
-- ...................................................................
-- SELECT countries.language, population
-- FROM country_languages JOIN countries
--     ON country_languages.country_code = countries.code
-- WHERE population = 
--     (
--     country_languages.population - countries.population/country_languages.percentage
--     )
-- ORDER BY country_languages.population DESC
-- GROUP BY countries.language
--     ;

-- Part (iv)
-- ...................................................................
SELECT cities.name
FROM cities JOIN countries
WHERE cities.id = 
    (SELECT capital
     FROM countries
     WHERE capital = cities.id
    )
ORDER BY countries.population DESC LIMIT 1;

-- Part (v)
-- ...................................................................




-- Part (vi)
-- ...................................................................
SELECT continent, name
FROM countries
WHERE life_expectancy = 
    (SELECT MAX(life_expectancy)
     FROM countries
     AND
     SELECT MIN(life_expectancy)
     FROM countries
    )
GROUP BY continent

-- RAN OUT OF TIME!