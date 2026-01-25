---Task 6: CRUD Operations End-to-End (SQL Server)

----CREATE – Create employees table

CREATE TABLE employees (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    status VARCHAR(20) DEFAULT 'Active'
);

INSERT INTO employees (emp_name, department, salary, joining_date)
VALUES
('Amit Sharma', 'IT', 60000, '2022-01-10'),
('Riya Gupta', 'HR', 45000, '2021-06-15'),
('Rahul Verma', 'IT', 70000, '2020-03-20'),
('Neha Singh', 'Finance', 55000, '2023-02-01'),
('Karan Mehta', 'HR', 40000, '2022-11-12');

---All employees

SELECT * FROM employees;

---Filtered data
SELECT emp_name, department, salary
FROM employees
WHERE department = 'IT';

---Salary greater than condition
SELECT *
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;

----Update one employee

UPDATE employees
SET salary = 75000
WHERE emp_id = 3;

--Update multiple rows
UPDATE employees
SET status = 'Inactive'
WHERE department = 'HR';

--Delete specific employee

DELETE FROM employees
WHERE emp_id = 5;


SELECT * FROM employees
WHERE status = 'Inactive';

DELETE FROM employees
WHERE status = 'Inactive';

----Example with rollback

BEGIN TRANSACTION;

DELETE FROM employees
WHERE department = 'Finance';

-- Validate before committing
SELECT * FROM employees;

ROLLBACK;   -- Undo changes
-- COMMIT;  -- Use only if correct


SELECT COUNT(*) AS total_employees FROM employees;






