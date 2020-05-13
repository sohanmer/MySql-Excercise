create database college;
use college;

create table college_individual(
id int NOT NULL,
name varchar(255) NOT NULL,
email varchar(255) NOT NULL,
mentor_id int
);

insert into college_individual (id, name, email, mentor_id)
values
(1,'sohan', 'sohan@gmail.com',NULL),
(2,'gaurav', 'gaurav@gmail.com', NULL), 
(3,'shamoon', 'shamoon@outlook.com', NULL);

insert into college_individual (id, name, email, mentor_id)
values
(4,'mayank', 'mayank@gmail.com',2),
(5,'ritik', 'ritik@gmail.com', 1), 
(6,'shubham', 'shubham@outlook.com', 2),
(7, 'sumit', 'sumit@hotmail.com', 1),
(8, 'harsh','harsh@gmail.com', 1),
(9, 'richa', 'richa@outlook.com',2),
(10,'raksha', 'raksha@gmail.com',2),
(11, 'vyom', 'vyom@hotmail.com',null),
(12,'pooja', 'pooja@gmail.com',null),
(13, 'ravi', 'ravi@gmail.com', 5),
(14, 'deepak', 'deepak@gmail.com',5),
(15, 'ankit', 'ankit@gmail.com',5),
(16, 'yogesh', 'yogesh@hotmail.com',2),
(17, 'himanshu', 'himanshu@outlook.com', 2),
(18,'aditya', 'aditya@yahoo.com',1),
(19, 'jitendra','jittu@yahoo.com',1),
(20, 'suraj', 'suraj@gmail.com',1);

select * from college_individual where mentor_id is not null order by name ; 

select a.id as id, a.name as mentee_name, a.email as email,b.id as mentor_id, b.name as mentor_name, b.email as mentor_email
from college_individual a, college_individual b
where a.mentor_id is not null 
and a.mentor_id = b.id ;

select a.id as id, a.name as mentee_name, a.email as email
from college_individual a, college_individual b
where a.mentor_id is not null 
and a.mentor_id = b.id 
and b.email like '%@gmail%';

insert into college_individual (id, name, email, mentor_id)
values
(21,'rakesh', 'rakesh@gmail.com',11),
(22,'rohit', 'rohit@gmail.com', 11), 
(23,'monika', 'monika@outlook.com', 11);

