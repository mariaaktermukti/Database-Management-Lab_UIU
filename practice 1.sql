create database practice_1;
use practice_1;

/*Create a table named Student with:
id (Primary Key),name,age,department, cgpa*/
CREATE TABLE Student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    cgpa DECIMAL(3,2)
);

/*Create a table named Course with:
course_id (Primary Key),course_name,credit*/
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    credit INT
);

/*Create a table named Enrollment with:
student_id (Foreign Key), course_id (Foreign Key)*/
CREATE TABLE Enrollment (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Student(id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

/*Insert at least 4 students into Student table*/

INSERT INTO Student VALUES
(1, 'Rahim', 22, 'CSE', 3.50),
(2, 'Karim', 23, 'EEE', 3.80),
(3, 'Amina', 21, 'CSE', 3.90),
(4, 'Sumi', 22, 'BBA', 3.20);

/*Show all students*/
SELECT * FROM Student;

/*Show students from CSE department*/
SELECT * FROM Student
WHERE department = 'CSE';

/*Show students with CGPA greater than 3.5*/
SELECT * FROM Student
WHERE cgpa > 3.5;

/*Show students with age 22 or more*/
SELECT * FROM Student
WHERE age >= 22;

