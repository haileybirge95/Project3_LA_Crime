-- Query all fields from the table
SELECT *
FROM "crimeinLA";

-- Count the amount of film_id's in film table
-- SELECT COUNT(film_id) FROM film;

-- Create an alias
-- SELECT COUNT(film_id) AS "Total films"
-- FROM film;

-- Group by division name and aggregate the division_id count
SELECT division_name, COUNT(division_id) AS "Total reports"
FROM "crimeinLA"
GROUP BY division_name;

-- Find the rows with the minimum rental rate
SELECT division_name, MIN(date_occ) AS "Min date",
MAX(date_occ) AS "Max date"
FROM "crimeinLA"
GROUP BY division_name;

-- find the count of reports by crime code
SELECT crime_id,COUNT(crime_id) AS "Total crimes by code"
FROM "crimeinLA"
GROUP BY crime_id
ORDER BY "Total crimes by code" DESC;

-- find the unique crime code and description
SELECT crime_id
FROM "crimeinLA"
GROUP BY crime_desc;