CREATE DATABASE intern_training_db;
GO

USE intern_training_db;
GO

CREATE TABLE students (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT
);


INSERT INTO students (name, email, age)
VALUES
('Amit Sharma', 'amit.sharma@gmail.com', 21),
('Riya Verma', 'riya.verma@gmail.com', 22),
('Karan Patel', 'karan.patel@gmail.com', 20),
('Sneha Singh', 'sneha.singh@gmail.com', 23),
('Rahul Mehta', 'rahul.mehta@gmail.com', 21);

SELECT * FROM students;

SELECT name, email FROM students;


SELECT name, age
FROM students
WHERE age > 21;
--------------------------------task 2------------------

EXEC sp_help students;

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'students';

ALTER TABLE students
ADD CONSTRAINT PK_students_id PRIMARY KEY (id);

ALTER TABLE students
ALTER COLUMN name VARCHAR(100) NOT NULL;

ALTER TABLE students
ALTER COLUMN email VARCHAR(150) NOT NULL;


ALTER TABLE students
ADD CONSTRAINT UQ_students_email UNIQUE (email);



-- Step 1: Add new column
ALTER TABLE students
ADD student_id INT IDENTITY(1,1);

-- Step 2: Drop old id column
ALTER TABLE students
DROP COLUMN id;

-- Step 1: Add new column
ALTER TABLE students
ADD student_id INT IDENTITY(1,1);

-- Step 2: Drop old id column
ALTER TABLE students
DROP COLUMN id;

-- Step 3: Rename new column
EXEC sp_rename 'students.student_id', 'id', 'COLUMN';

-- Step 4: Add primary key again
ALTER TABLE students
ADD CONSTRAINT PK_students_id PRIMARY KEY (id);

ALTER TABLE students
ADD date_of_birth DATE;


EXEC sp_rename 'students.name', 'full_name', 'COLUMN';

ALTER TABLE students
DROP COLUMN age;

INSERT INTO students (full_name, email)
VALUES ('Test User', 'riya@gmail.com');

INSERT INTO students (full_name, email)
VALUES (NULL, 'test@gmail.com');




-- Step 3: Rename new column
EXEC sp_rename 'students.student_id', 'id', 'COLUMN';

-- Step 4: Add primary key again
ALTER TABLE students
ADD CONSTRAINT PK_students_id PRIMARY KEY (id);












