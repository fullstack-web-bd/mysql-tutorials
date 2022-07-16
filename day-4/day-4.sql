-- <<===== MySQL Day-4 ====> JOIN

-- GET Data from multiple table without JOIN
SELECT employee.name, employee.email, departments.name as departments
FROM `employee`, `departments`
WHERE employee.department_id = departments.id;

-- INNER JOIN
SELECT e.id, e.name, e.email, d.name as department
FROM `employee` as e
JOIN `departments` as d ON e.department_id=d.id;

-- LEFT JOIN
SELECT e.id, e.name, e.email, d.name as department
FROM `employee` as e
LEFT JOIN `departments` as d ON e.department_id=d.id;

-- RIGHT JOIN
SELECT e.id, e.name, e.email, d.name as department
FROM `employee` as e
RIGHT JOIN `departments` as d ON e.department_id=d.id;

-- SELF JOIN
SELECT e.name, e.email as employee_email, m.name as manager_name, m.email as manager_email
FROM `employee` AS e
JOIN `employee` AS m ON e.manager_id=m.id;

-- Multiple table join
SELECT e.id, e.name, e.email, d.name as department, ed.level as LAST_EDUCATION_LEVEL
FROM `employee` as e
JOIN `departments` as d ON e.department_id=d.id
JOIN `education` as ed ON ed.employee_id=e.id
ORDER BY ed.id DESC