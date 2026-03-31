/*1.Create the following tables with the following constraints.
books (book_id, title, author, genre, price);	[1.5]
a. Make book_id (int) the primary key. 
b. title and author (varchar [30]) cannot be NULL. 
c. Set price (float) with a default value of 500.00. 

members (member_id, name, email);		[1]
a. Make member_id (int) the primary key. 
b. name and email (varchar [30]) must be unique and cannot be NULL. 

book_issues (issue_id, member_id, book_id, issue_date);		[1.5]
a. Make issue_id (int) the primary key. 
b. Set member_id as a foreign key referencing 

2.DROP all the tables at the beginning. Maintain the sequence while dropping. [1]
3.Set book_id as a foreign key referencing books.book_id in book_issues. [1]
4.Insert 3 demo records in all the tables, maintaining relationships. [1]
5.ADD two columns ‘release_date’ (date) & ‘publisher’ (varchar [20]) in the books table [1]
6.Change the datatype of genre to char [50].	[1]
7.Rename the table name of ‘members’ to ‘customers’ and then rename the column name of name to customer_name.	[1]
*/

create database prev_CT1;
use prev_CT1;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    author VARCHAR(30) NOT NULL,
    genre VARCHAR(30),
    price FLOAT DEFAULT 500.00
);

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    email VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE book_issues (
    issue_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

/* 2*/

/* DROP TABLE IF EXISTS book_issues;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS books;

/* 3 */
ALTER TABLE book_issues
ADD FOREIGN KEY (book_id) REFERENCES books(book_id);

INSERT INTO books VALUES
(1, 'DBMS Basics', 'Author A', 'Education', 450),
(2, 'SQL Guide', 'Author B', 'Technology', 500),
(3, 'Data Science', 'Author C', 'Science', 600);

INSERT INTO members VALUES
(1, 'Rahim', 'rahim@gmail.com'),
(2, 'Karim', 'karim@gmail.com'),
(3, 'Amina', 'amina@gmail.com');

INSERT INTO book_issues VALUES
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-02-01'),
(3, 3, 3, '2024-03-01');

/*ALTER TABLE books
ADD release_date DATE,
ADD publisher VARCHAR(20);*/


ALTER TABLE books
MODIFY genre CHAR(50);


RENAME TABLE members TO customers;
ALTER TABLE customers
RENAME COLUMN name TO customer_name;