-----Task 9

SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


SELECT emp_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT *
FROM intern_training_db.dbo.employees
WHERE salary > (
    SELECT AVG(salary)
    FROM intern_training_db.dbo.employees
);

SELECT 
    emp_name,
    salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;



SELECT e.emp_name, e.salary
FROM employees e
JOIN (
    SELECT department_id, AVG(salary) AS dept_avg_salary
    FROM employees
    GROUP BY department_id
) d
ON e.department_id = d.department_id
WHERE e.salary > d.dept_avg_salary;



SELECT emp_name, salary, department_id
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);



SELECT emp_name, department_id
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    WHERE salary > 60000
);


SELECT emp_name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
);



SELECT emp_name, salary
FROM dbo.employees
WHERE salary > (
    SELECT AVG(salary)
    FROM dbo.employees
);





