-----------Task -8
-----INNER JOIN

SELECT 
    e.emp_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

	------LEFT JOIN

	SELECT 
    e.emp_name,
    e.salary,
    d.department_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id;

	----  RIGHT JOIN

	SELECT 
    e.emp_name,
    d.department_name
FROM employees e
RIGHT JOIN departments d
    ON e.department_id = d.department_id;

	------FULL JOIN


	SELECT 
    e.emp_name,
    d.department_name
FROM employees e
FULL JOIN departments d
    ON e.department_id = d.department_id;

	----- FULL JOIN

	SELECT e.emp_name, d.department_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id

UNION

SELECT e.emp_name, d.department_name
FROM employees e
RIGHT JOIN departments d
    ON e.department_id = d.department_id;


	---| JOIN Type  | Returns                   |
---| ---------- | ------------------------- |
--| INNER JOIN | Only matching rows        |
--| LEFT JOIN  | All left + matching right |
--| RIGHT JOIN | All right + matching left |
---| FULL JOIN  | All rows from both tables |








