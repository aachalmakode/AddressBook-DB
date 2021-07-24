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
phone_number int not null,
email varchar(50) not null
);
select * from addressbook;

