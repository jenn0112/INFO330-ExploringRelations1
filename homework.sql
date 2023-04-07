/*QUESTIONS*/
/*(question-1.sql)*/
SELECT first_name
FROM persons
WHERE city = 'Omaha';

/*(question-2.sql)*/
SELECT last_name || ',' first_name
FROM persons
WHERE age <= 29
ORDER BY last_name ASC;

/*(question-3.sql)*/
SELECT last_name || ',' || first_name AS full_name
FROM persons
WHERE GENDER = 'female' AND (title = 'Rev' OR title ='Reverend')
ORDER BY last_name ASC;

/*(question-4.sql)*/
SELECT last_name ||',' || first_name AS full_name
FROM persons
WHERE age = (SELECT MIN(age) FROM persons)
ORDER BY last_name ASC;

/*(question-5.sql)*/
SELECT first_name
FROM persons
WHERE last_name LIKE 'Smith%';

/*(question-6.sql)*/
SELECT DISTINCT substr(email, instr(email, '@') +1) 
FROM persons
WHERE city = 'Seattle';


/*MANIPULATION*/

/*(question-7.sql)*/
SELECT * 
FROM persons
WHERE state = 'California' AND city = 'Sacramento';

/*(question-8.sql)*/
UPDATE persons
SET age =18
WHERE address LIKe '%Street';

/*(question-9.sql)*/
DELETE FROM persons
WHERE city = 'Kansas City' OR 'Pittsburgh' OR (city = 'Jacksonville' AND state ='Florida');

/*(question-10.sql)*/


/*EXTRA CREDIT*/
/*(extra-1.sql)*/
SELECT age 
FROM PERSONS
WHERE gender = 'Female' AND title = 'Dr' AND city = 'West Palm Beach' AND state = 'Florida';
/*49*/

SELECT age 
FROM persons 
WHERE gender = 'Male' AND title ='Rev' AND city = 'Phoenix' AND state ='Arizona';
/*101*/

/*(extra-2.sql)*/
SELECT Count(Distinct gender)
AS gender_count
FROM persons;
/*8*/

/*(extra-3.sql)*/
SELECT MAX(age) AS max_age, MIN(age) AS min_age, AVG(age) AS avg_age 
FROM persons;
