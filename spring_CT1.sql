create database spring_CT1;
use spring_CT1;

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    credit INT
);

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT,
    city VARCHAR(50),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE enrollment (
    enroll_id INT PRIMARY KEY,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

INSERT INTO course VALUES
(101, 3),
(102, 4),
(103, 2),
(104, 3);

INSERT INTO student VALUES
(1, 'Rahim', 101, 'Dhaka'),
(2, 'Karim', 102, 'Chittagong'),
(3, 'Tanvir', 103, 'Khulna'),
(4, 'Amit', 104, 'Rajshahi');

INSERT INTO enrollment VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104);


SELECT * FROM student
WHERE LENGTH(name) >= 4
AND SUBSTRING(name, 3, 1) = 'h';
/*OR*/
SELECT * FROM student
WHERE name LIKE '__h%'
AND LENGTH(name) >= 4;


