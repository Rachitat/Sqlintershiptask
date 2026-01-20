                            -- task 4
ALTER DATABASE intern_training_db
SET COMPATIBILITY_LEVEL = 150;

SELECT *
FROM students
ORDER BY student_name;

SELECT *
FROM students
ORDER BY student_name DESC;

SELECT *
FROM students
ORDER BY age DESC, student_name ASC;

SELECT TOP 5 *
FROM students
ORDER BY age DESC;

SELECT *
FROM students
WHERE age >= 21
ORDER BY age DESC;


SELECT *
FROM students
ORDER BY student_name
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;


SELECT *
FROM students
ORDER BY student_name
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;



SELECT *
FROM students
ORDER BY student_name
OFFSET 10 ROWS FETCH NEXT 5 ROWS ONLY;


SELECT TOP 3
       student_name,
       age
FROM students
ORDER BY age DESC;


SELECT
    student_name,
    DATEDIFF(YEAR, date_of_birth, GETDATE()) AS age
FROM students
ORDER BY age DESC;


SELECT *
FROM students
ORDER BY student_name
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

SELECT *
FROM students
WHERE age IS NOT NULL
ORDER BY age DESC, student_name ASC;

SELECT *
FROM students
ORDER BY 
    CASE WHEN age IS NULL THEN 1 ELSE 0 END,
    age DESC,
    student_name ASC;


	SELECT *
FROM students
WHERE age IS NOT NULL
ORDER BY age DESC, student_name ASC;

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY student_name) AS rn
    FROM students
) t
WHERE rn BETWEEN 6 AND 10;

SELECT TOP 5 *
FROM students
ORDER BY student_name;

SELECT TOP 5 *
FROM students
WHERE age IS NOT NULL
ORDER BY age DESC;



-- Sorting
SELECT * FROM students ORDER BY student_name;
SELECT * FROM students ORDER BY age DESC;

-- Multiple sorting
SELECT * FROM students ORDER BY age DESC, student_name;

-- Limiting
SELECT TOP 5 * FROM students ORDER BY age DESC;

SELECT
    student_name,
    DATEDIFF(YEAR, date_of_birth, GETDATE()) AS age
FROM students
ORDER BY age DESC;


-- Pagination
SELECT
    student_name,
    age
FROM students
WHERE age IS NOT NULL
ORDER BY age DESC, student_name ASC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;


-- Leaderboard
SELECT TOP 3 student_name, age
FROM students
ORDER BY age DESC;



-- Sorting
SELECT *
FROM students
ORDER BY student_name ASC;

-- Limiting
SELECT TOP 3 student_name, age
FROM students
WHERE age IS NOT NULL
ORDER BY age DESC;

-- Pagination
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY student_name) AS rn
    FROM students
) t
WHERE rn BETWEEN 1 AND 5;










