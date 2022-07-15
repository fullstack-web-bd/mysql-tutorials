-- Select all employee
SELECT * FROM `employee`;

SELECT * FROM employee;

-- Get specific columns value
-- SELECT id FROM `employee`;
SELECT id, name, salary FROM `employee`;

-- Multiple table select
SELECT emp.name, emp.email, edu.level, edu.result
FROM employee AS emp, education as edu
WHERE emp.id = edu.employee_id;


-- Order by --->> Greater
SELECT * FROM `employee`
ORDER BY salary DESC;

-- Order by --->> Smaller
SELECT * FROM `employee`
ORDER BY salary ASC;

-- Where clause --->> Get the salary greater than or equal 200 
SELECT * FROM `employee`
WHERE salary >= 200;

-- SELECT with order by
SELECT * FROM `employee`
WHERE salary >= 200
ORDER BY salary ASC;

-- LIMIT
SELECT * FROM `employee`
WHERE salary >= 200
ORDER BY salary ASC
LIMIT 1;

-- Limit with Offset
SELECT * FROM `employee`
WHERE salary >= 0
ORDER BY salary ASC
LIMIT 10 OFFSET 0;

-- Limit with offset wihtout offset
SELECT * FROM `employee`
WHERE salary >= 0
ORDER BY salary ASC
LIMIT 1, 10

-- NOT Equal
SELECT * FROM `employee`
-- WHERE name != 'Akash'
WHERE name <> 'Akash'

-- Get salary of 200-300
SELECT * FROM `employee`
WHERE salary >= 200 AND salary <= 300;

-- Using between
SELECT * FROM `employee`
WHERE salary BETWEEN 200 AND 300;

-- Date filtered data
SELECT *
FROM `employee`
WHERE salary
BETWEEN '2022-07-01' AND '2022-07-15';

-- Search name starts with AkashN
SELECT * FROM `employee`
WHERE name LIKE 'AkashN%'

-- Search name ends with sh
SELECT * FROM `employee`
WHERE name LIKE '%sh'

-- Searh all which name has sh
SELECT * FROM `employee`
WHERE name LIKE '%sh%'

-- WHERE IN
-- [2, 3, 4]
SELECT * FROM `employee`
-- WHERE id=2 OR id=3 OR id=4
WHERE id IN(2, 3, 4)