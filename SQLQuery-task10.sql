-------------------Task 10: Creating and Using SQL Views

SELECT
    e.emp_id,
    e.emp_name,
    e.salary,
    d.department_name
FROM dbo.employees e
JOIN dbo.departments d
    ON e.department_id = d.department_id;



	SELECT TOP 1 *
FROM dbo.employees;


CREATE VIEW vw_employee_department
AS
SELECT
    e.emp_id,
    e.emp_name,
    e.salary,
    d.department_name
FROM dbo.employees e
JOIN dbo.departments d
    ON e.department_id = d.department_id;



	SELECT * 
FROM vw_employee_department;


SELECT *
FROM vw_employee_department
WHERE salary > 50000;



SELECT *
FROM vw_employee_department
ORDER BY salary DESC;


SELECT *
FROM vw_employee_department
WHERE department_name = 'HR';


INSERT INTO dbo.employees (emp_name, salary, department_id)
VALUES ('Test User', 40000, 1);

SELECT *
FROM vw_employee_department;



CREATE VIEW vw_employee_simple
AS
SELECT emp_id, emp_name, salary, department_id
FROM dbo.employees;


INSERT INTO vw_employee_simple (emp_name, salary, department_id)
VALUES ('Another User', 45000, 2);







