
---------------------------------Task 11

SELECT * 
FROM dbo.employees;


SELECT *
FROM dbo.employees
WHERE department_id = 1;


CREATE NONCLUSTERED INDEX idx_employees_department
ON dbo.employees (department_id);


SELECT *
FROM dbo.employees
WHERE department_id = 1;


CREATE NONCLUSTERED INDEX idx_employees_salary
ON dbo.employees (salary);


SELECT emp_name, salary
FROM dbo.employees
WHERE salary > 50000;


SELECT *
FROM dbo.employees
WHERE department_id = 1
AND salary > 50000;


CREATE NONCLUSTERED INDEX idx_employees_dept_salary
ON dbo.employees (department_id, salary);


EXEC sp_helpindex 'dbo.employees';


-- Baseline query
SELECT * FROM dbo.employees WHERE department_id = 1;

-- Create index
CREATE NONCLUSTERED INDEX idx_employees_department
ON dbo.employees (department_id);

-- Optimized query
SELECT * FROM dbo.employees WHERE department_id = 1;

-- Salary index
CREATE NONCLUSTERED INDEX idx_employees_salary
ON dbo.employees (salary);

-- Composite index
CREATE NONCLUSTERED INDEX idx_employees_dept_salary
ON dbo.employees (department_id, salary);

-- View indexes
EXEC sp_helpindex 'dbo.employees';






