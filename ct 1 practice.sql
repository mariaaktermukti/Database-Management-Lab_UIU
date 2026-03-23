create database db6;

use db6;
#city( id, cityn, ppl)
#author ( id, name, cityn, email)

create table city(
id INT,
cityn VARCHAR(20),
ppl numeric(10),
primary key(cityn)
);
insert into city(id, cityn, ppl) values(101,"Dhaka",1000000);
insert into city values(102,"mym",1093484);
insert into city values(103,"bsl",1093484);
select * from city;  # table ta show korbe



create table author(
id INT,
name VARCHAR(30),
email VARCHAR(30),
cityn VARCHAR(20),
primary key(id),
foreign key(cityn) references city(cityn)
);
insert into author(id,name,email,cityn) values(1,"Mukti","mukti23@gmail.com","mym");
insert into author values(2,"Shifat","shifat233@gmail.com","bsl");
insert into author values(3,"Tom","tom31@gmail.com","Dhaka");
select * from author;

select name, cityn from author where cityn="Dhaka";