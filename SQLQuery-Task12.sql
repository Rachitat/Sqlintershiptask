---------------------Task 12


CREATE TABLE dbo.intern_employees (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,

    emp_name VARCHAR(100) NOT NULL,

    email VARCHAR(150) UNIQUE,   -- UNIQUE constraint

    age INT
        CHECK (age BETWEEN 18 AND 60),   -- CHECK constraint

    salary DECIMAL(10,2)
        CHECK (salary >= 15000),         -- Numeric validation

    status VARCHAR(20)
        CHECK (status IN ('Active', 'Inactive'))
        DEFAULT 'Active',                -- DEFAULT value

    joining_date DATETIME
        DEFAULT GETDATE()                -- Timestamp default
);


INSERT INTO dbo.intern_employees (emp_name, email, age, salary)
VALUES ('Amit Sharma', 'amit@gmail.com', 25, 30000);


SELECT * FROM dbo.intern_employees;


INSERT INTO dbo.intern_employees (emp_name, age, salary)
VALUES ('Invalid Age', 15, 20000);


INSERT INTO dbo.intern_employees (emp_name, age, salary)
VALUES ('Low Salary', 25, 5000);


INSERT INTO dbo.intern_employees (emp_name, email, age, salary)
VALUES ('Duplicate Email', 'amit@gmail.com', 30, 40000);


INSERT INTO dbo.intern_employees (emp_name, age, salary, status)
VALUES ('Wrong Status', 28, 35000, 'Pending');

INSERT INTO dbo.intern_employees (emp_name, email, age, salary)
VALUES (NULL, 'test@gmail.com', 10, 1000);

ALTER TABLE dbo.intern_employees
DROP CONSTRAINT CK__intern_employees__age;


SELECT name
FROM sys.check_constraints
WHERE parent_object_id = OBJECT_ID('dbo.intern_employees');







