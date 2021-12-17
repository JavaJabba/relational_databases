-- Question 2
-- (i)

-- CREATE TABLE trips (
--     	trip_id int,
--         trip_title varchar(255),
--         dep_date date,
--         trip_length int,
--         places int,
--         trip_price money
-- );

-- INSERT INTO trips(trip_id, trip_title, dep_date, trip_length, places, trip_price)
-- VALUES 
--     ('247', 'Saharan Splendor', '2022-09-21', '14', '15', '1999.99' ),
--     ('321', 'Highland Hike', '2022-07-12', '7', '23', '799.99'),
--     ('123', 'Japanese Journey', '2022-08-31', '21', '10', '2499.99');

-- DELETE
-- FROM trips
-- WHERE dep_date LIKE '%07%';

-- SELECT * FROM trips;

SELECT * FROM countries;

SELECT sum(area), region, name
FROM countries
WHERE name > 5
GROUP BY region
ORDER BY name ASC;

SELECT 


