--William Christie
--HW3
--PLEASE RUN USING: source William_Christie_HW3.sql

-- 1. List all state names and their 2-letter codes. 
SELECT name, statecode FROM states;
-- 2. Write a query to report the information for all counties that start w/ Prince.
SELECT * FROM counties WHERE name LIKE 'Prince%';
-- 3. List only the population in year 2010 for state represented by Sen. Richard Lugar.
SELECT population_2010 AS 'populate_2010'  FROM states,senators
WHERE states.statecode=senators.statecode
AND senators.name LIKE 'Richard Lugar';
-- 4. Report total number of counties in 'Maryland'
SELECT COUNT(*) AS "Number of Maryland Counties" FROM states,counties WHERE states.name LIKE "Maryland" AND states.statecode=counties.statecode;
-- 5. Find the name of the state that was admitted last into the union. 
SELECT name AS 'Last State Admitted to Union' FROM states WHERE admitted_to_union IN (SELECT MAX(admitted_to_union) FROM states);
-- 6. Find all democratic senators that are not chairman of any commitee or sub-commitee.
SELECT DISTINCT(senators.name) FROM senators, committees WHERE senators.name!=committees.chairman AND senators.name!=committees.ranking_member AND senators.affiliation LIKE "D" ORDER BY senators.name ASC; 
