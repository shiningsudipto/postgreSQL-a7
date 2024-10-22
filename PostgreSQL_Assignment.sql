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