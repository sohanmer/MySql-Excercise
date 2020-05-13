create database shop;
use shop;

create table customer(
	id int not null,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    email varchar(255) not null,
    date_of_birth varchar(255),
    primary key(id)
    );
    
create table seller(
	id int not null,
    name varchar(255),
    gender varchar(255),
    primary key(id)
    );

create table sales(
	id int not null,
    customer_id int not null,
    seller_id int not null,
    date varchar(255),
    amount bigInt,
    primary key(id)
    );
    
    insert into customer values
    (1,'Mayank','Pathak','mayank@gmail.com','1988-01-14'),
    (2,'Ankit', 'Chaudhary','ankit@gmail.com','1991-12-04'),
    (3,'Vijay','Saini','vijay@gmail.com','1998-11-28'),
    (4,'Harish','Solanki','harish@gmail.com','1999-04-21'),
    (5,'Anurag','Kumar','anurag@gmail.com','1987-09-23');
    
    insert into seller values
    (1, 'ravi', 'male'),
    (2, 'aditya', 'male'),
    (3, 'monika', 'female'),
    (4, 'manisha','female'),
    (5, 'mukul', 'male');
    
    insert into sales values
    (1,1,3,'2015-12-04',4500),
    (2,2,3,'2014-12-14',6542),
    (3,1,2,'2018-02-12',7899),
    (4,3,5,'2019-09-15',1000),
    (5,4,5,'2016-08-23',3456),
    (6,5,1,'2018-09-24',74324),
    (7,5,2,'2018-04-01',71524),
    (8,3,1,'2018-09-30',7435),
    (9,1,1,'2018-09-26',6324),
    (10,4,4,'2017-09-24',7097),
    (11,1,4,'2008-03-14',500),
    (12,4,1,'2011-11-16',1500),
    (13,2,1,'2012-01-24',724),
    (14,3,2,'2013-10-24',7324),
    (15,5,4,'2014-11-24',4324);
    
    select concat(customer.first_name,' ', customer.last_name) as CustomerName , seller.name as SellerName, sales.amount
	from customer
	inner join sales on sales.customer_id = customer.id
    inner join seller on seller.id = sales.seller_id
    order by CustomerName, amount;
    
    