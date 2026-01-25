--Task 5: Aggregate Functions & GROUP BY (SQL Server) COUNT – Total number of students

SELECT COUNT(*) AS total_students
FROM students;

--COUNT on a column (NULL-aware)

SELECT COUNT(age) AS students_with_age
FROM students;

--3️⃣ MIN, MAX, AVG age

SELECT 
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    AVG(age) AS avg_age
FROM students;

--4️⃣ GROUP BY age (students per age)

SELECT age, COUNT(*) AS student_count
FROM students
WHERE age IS NOT NULL
GROUP BY age
ORDER BY age;

--5️⃣ GROUP BY gender 

SELECT gender, COUNT(*) AS total_students
FROM students
GROUP BY gender;

--6️⃣ GROUP BY + HAVING 

SELECT age, COUNT(*) AS student_count
FROM students
WHERE age IS NOT NULL
GROUP BY age
HAVING COUNT(*) > 1;

SELECT 
    COUNT(*) AS total_rows,
    COUNT(age) AS non_null_age,
    COUNT(*) - COUNT(age) AS null_age
FROM students;



-- Total students
SELECT COUNT(*) AS total_students
FROM students;

-- Students with valid age
SELECT COUNT(age) AS students_with_age
FROM students;

-- Age statistics
SELECT 
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    AVG(age) AS avg_age
FROM students;

-- Group by age
SELECT age, COUNT(*) AS student_count
FROM students
WHERE age IS NOT NULL
GROUP BY age
ORDER BY age;

-- Group by gender
SELECT gender, COUNT(*) AS total_students
FROM students
GROUP BY gender;

-- Group filter using HAVING
SELECT age, COUNT(*) AS student_count
FROM students
GROUP BY age
HAVING COUNT(*) > 1;

SELECT gender, COUNT(*) AS total_students
FROM students
GROUP BY gender;

SELECT gender
FROM students;


UPDATE students
SET gender = 'Male'
WHERE id IN (1, 3, 5);

UPDATE students
SET gender = 'Female'
WHERE id IN (2, 4, 6);

SELECT gender, COUNT(*) AS total_students
FROM students
GROUP BY gender;

UPDATE students SET age = 21 WHERE id IN (1, 2);
UPDATE students SET age = 22 WHERE id IN (3, 4);


SELECT age, COUNT(*) AS student_count 
FROM students
WHERE age IS NOT NULL
GROUP BY age
HAVING COUNT(*) > 1;


-- Check NULLs
SELECT COUNT(*) AS total, COUNT(age) AS non_null_age FROM students;

-- Check gender data
SELECT DISTINCT gender FROM students;

-- Check duplicates
SELECT age, COUNT(*) FROM students GROUP BY age;







