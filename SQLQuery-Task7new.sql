CREATE TABLE departments (
    department_id INT IDENTITY(1,1) PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE employees (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT,

    CONSTRAINT fk_department
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
    ON DELETE CASCADE
);





	INSERT INTO departments (department_name)
VALUES
('IT'),
('HR'),
('Finance'),
('Marketing');


SELECT * FROM departments;

INSERT INTO employees (emp_name, salary, department_id)
VALUES
('Amit Sharma', 60000, 1),
('Riya Gupta', 45000, 2),
('Rahul Verma', 70000, 1),
('Neha Singh', 55000, 3);




SELECT * FROM employees;
SELECT * FROM departments;

SELECT * FROM employees;

INSERT INTO employees (emp_name, salary, department_id)
VALUES ('Contractor', 30000, NULL);

DROP TABLE employees;






