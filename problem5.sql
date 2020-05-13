create database hospital;
use hospital;

create table patients (
	id int NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	primary key (id)
);

create table documents(
	id int NOT NULL,
	expiration_date varchar(255) NOT NULL,
	uploaded_date varchar(255) NOT NULL,
	patient_id varchar(255) NOT NULL,
	type varchar(255) NOT NULL,
	deleted_at varchar(255)
);

insert into patients values
	(1,'Mayank','Pathak'),
    (2,'Ankit', 'Chaudhary'),
    (3,'Vijay','Saini'),
    (4,'Harish','Solanki'),
    (5,'Anurag','Kumar');
    
    
insert into documents values
(1,'2016-12-04','2011-12-12',2,'a','2013-01-12'),
(2,'2017-12-04','2012-11-23',3,'a','2014-02-13'),
(3,'2018-12-04','2013-10-13',1,'b','2015-03-14'),
(4,'2019-12-04','2014-09-21',1,'c','2016-04-14'),
(5,'2020-12-04','2015-08-09',2,'d','2017-05-16'),
(6,'2021-12-04','2016-07-10',4,'c','2018-06-17'),
(7,'2022-12-04','2017-06-15',1,'c','2019-07-18'),
(8,'2023-12-04','2018-05-12',4,'a','2020-08-19'),
(9,'2024-12-04','2012-04-01',1,'b','2019-10-20');

select patients.id as id, patients.first_name as FirstName, patients.last_name as LastName, documents.expiration_date as expiration_date
from patients
inner join documents on documents.patient_id = patients.id
where STR_TO_DATE(expiration_date,'%Y-%m-%d') < current_date() ;

select patients.id as id, patients.first_name as FirstName, patients.last_name as LastName, documents.expiration_date as expiration_date, documents.type as type
from patients
inner join documents on documents.patient_id = patients.id
order by expiration_date;

select patients.id as id, patients.first_name as FirstName, patients.last_name as LastName, documents.expiration_date as expiration_date, documents.type as type, max(documents.uploaded_date)
from patients
inner join documents on documents.patient_id = patients.id
group by type
order by expiration_date;