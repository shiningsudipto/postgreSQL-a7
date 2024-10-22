-- Active: 1729360115145@@127.0.0.1@5432@university_db

-- creating students table
CREATE Table students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(150),
    age INT,
    email VARCHAR(100) UNIQUE,
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(50)
)

-- creating courses table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(200),
    credits INT
)

-- creating enrollment table
create table enrollment(
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id)
)

-- inserting demo data into students table
INSERT INTO students (student_id, student_name, age, email, frontend_mark, backend_mark, status)
VALUES
(1, 'Sameer', 21, 'sameer@example.com', 48, 60, NULL),
(2, 'Zoya', 23, 'zoya@example.com', 52, 58, NULL),
(3, 'Nabil', 22, 'nabil@example.com', 37, 46, NULL),
(4, 'Rafi', 24, 'rafi@example.com', 41, 40, NULL),
(5, 'Sophia', 22, 'sophia@example.com', 50, 52, NULL),
(6, 'Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);

-- inserting demo data into courses table
INSERT INTO courses (course_id, course_name, credits)
VALUES
(1, 'Next.js', 3),
(2, 'React.js', 4),
(3, 'Databases', 3),
(4, 'Prisma', 3);

-- inserting demo data into enrollment table
INSERT INTO enrollment (enrollment_id, student_id, course_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 2);

-- Query 1:
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status)
VALUES ('Sudipta Das', 23, 'ssudiptait@gmail.com', 60, 60, NULL);

-- Query 2:
SELECT s.student_name from students AS s
JOIN enrollment e ON s.student_id = e.student_id
join courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Next.js'

-- Query 3:
UPDATE students
SET status = 'Awarded'
WHERE student_id = (
    SELECT student_id FROM students
    ORDER BY (frontend_mark + backend_mark) DESC
    LIMIT 1
);

-- Query 4:
DELETE FROM courses
WHERE course_id NOT IN(
    SELECT course_id FROM enrollment
)

-- Query 5:
SELECT student_name from students
LIMIT 2 OFFSET 2

-- Query 6:
SELECT c.course_name, count(e.student_id) as students_enrolled FROM courses c
JOIN enrollment e On c.course_id = e.course_id
GROUP BY c.course_name;

-- Query 7:
SELECT avg(students.age)::NUMERIC(10,2) as average_age FROM students

-- Query 8:
SELECT student_name FROM students
where email LIKE '%example.com'