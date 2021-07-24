#uc1
create database addressbook;
show databases;
use addressbook;

#UC2-creates a Table
create table addressbook (
first_name varchar(31) not null,
last_name varchar(31) not null,
address varchar(150) not null,
city varchar(31) not null,
state varchar(31) not null,
zip int not null,
phone_number long not null,
email varchar(50) not null
);
#UC3
#Add data to Table 
insert into addressbook(first_name,last_name,address,city,state,zip,phone_number,email) values
('Aachal','Makode','Gadge Nagar','Amravati','Maharashtra',444604,9097453278,'aachal@gmail.com'),
('Minal','Rathod','Sindh','Hyderabad','Andhra',444608,9493213357,'minal@gmail.com'),
('Yash','Sahu','Dharma','Mumbai','Maharashtra',826984,9121522521,'yashsahuk@gmail.com'),
('Neha','Rathi','Maya nagar','Bhopal','MP',534204,8330911935,'neharathi89@gmail.com'),
('Vaishnavi','Popat','Sawant','Mumbai','Maharastra',852214,9876543210,'vaishnavipopat@gmail.com'),
('Ayur','Ninawe','Bommanahalli','Banagalore','Karnataka',725489,9139191921,'ayur567@gmail.com');

select * from addressbook;

#uc4
UPDATE addressbook
SET city = 'Bangalore',
state = 'Karnataka',
zip = 852369
WHERE first_name = 'Minal';
