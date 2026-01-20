
                        // task 3//

SELECT *
FROM students;

ALTER TABLE students
ADD gender VARCHAR(10);

ALTER TABLE students
ALTER COLUMN email VARCHAR(200) NOT NULL;

UPDATE students
SET phone_number = '9876543210'
WHERE id = 1;

UPDATE students
SET date_of_birth = '2002-05-15'
WHERE id = 1;



UPDATE students
SET 
    phone_number = '9123456789',
    date_of_birth = '2001-08-20'
WHERE id = 2;


UPDATE students
SET phone_number = '9999999999';

ALTER TABLE students
ALTER COLUMN phone_number VARCHAR(15) NOT NULL;

ALTER TABLE students
ADD CONSTRAINT UQ_students_phone UNIQUE (phone_number);

EXEC sp_rename 'students.full_name', 'student_name', 'COLUMN';

ALTER TABLE students
ALTER COLUMN email VARCHAR(200) NOT NULL;

SELECT phone_number, COUNT(*) AS total
FROM students
GROUP BY phone_number
HAVING COUNT(*) > 1;



ALTER TABLE students
ADD age AS DATEDIFF(YEAR, date_of_birth, GETDATE());

ALTER TABLE students
ADD CONSTRAINT CK_students_age CHECK (age BETWEEN 1 AND 120);



UPDATE students SET phone_number = '9000000001' WHERE id = 1;
UPDATE students SET phone_number = '9000000002' WHERE id = 2;
UPDATE students SET phone_number = '9000000003' WHERE id = 3;
UPDATE students SET phone_number = '9000000004' WHERE id = 4;
UPDATE students SET phone_number = '9000000005' WHERE id = 5;
UPDATE students SET phone_number = '9000000006' WHERE id = 6;



SELECT 
    student_name,
    date_of_birth,
    DATEDIFF(YEAR, date_of_birth, GETDATE()) AS age
FROM students;

SELECT *
FROM students
WHERE age > 21;

SELECT full_name, age
FROM students
WHERE age > 20 AND age < 25;



                       Task 3
////////////////////////////

SELECT * FROM students WHERE age > 21;

SELECT student_name, age
FROM students
WHERE age > 20 AND age < 25;

SELECT student_name, age
FROM students
WHERE age = 20 OR age = 23;

SELECT student_name
FROM students
WHERE student_name LIKE 'R%';

SELECT student_name
FROM students
WHERE student_name LIKE '%an%';

SELECT student_name, age
FROM students
WHERE age IN (20, 21, 23);

SELECT student_name, age
FROM students
WHERE age BETWEEN 20 AND 23;

SELECT student_name
FROM students
WHERE email IS NULL;

SELECT student_name AS StudentName, email AS EmailID
FROM students;

SELECT student_name, email
FROM students
WHERE email LIKE '%@gmail.com';

