CREATE DATABASE db5;

DROP TABLE IF EXISTS city;
CREATE TABLE city (
    id INT, 
    cityn VARCHAR(20), 
    ppl NUMERIC(8),
    PRIMARY KEY(cityn)
);
/*City table e value insert kora*/
insert into city values(21, 'Dhk', 9999999);
insert into city values(22, 'Ctg', 3333399);
insert into city values(23, 'khl', 10000); 
# insert into city values(23, 'Dhk', 10000); => eikhne error dibe, cz pk duplicate value thakle error dey

select * from city; # sob col er value chole ashbe -> city col er

#---------------------------------------------------------------------------------------------
#Create another table
CREATE TABLE authors (
id INT, 
name VARCHAR(20),
city VARCHAR(20), 
email VARCHAR(20) ,
primary key (id),
foreign key (cityn) references city(cityn)
);
/*Authors table e value insert kora*/
INSERT INTO authors (id,name,city,email) VALUES(1,"Vivek", 'Dhk', "xuz@abc.com");
INSERT INTO authors  VALUES(2,"Priya", 'Dhk',"p@gmail.com");
INSERT INTO authors (id,name,city,email) VALUES(3,"Tom", 'Ctg', "tom@yahoo.com");

select * from authors; # author table er sob value show korbe

SHOW TABLES;  /*we made 2 tables(city, authors).here we check 2 table*/


