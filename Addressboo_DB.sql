create database addressbook1;
show databases;
use addressbook1;

#UC2-creates a Table
create table addressbook1(
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
insert into addressbook1(first_name,last_name,address,city,state,zip,phone_number,email) values

('Aachal','Makode','Gadge Nagar','Amravati','Maharashtra',444604,9097453278,'aachal@gmail.com'),
('Minal','Rathod','Sindh','Hyderabad','Andhra',444608,9493213357,'minal@gmail.com'),
('Yash','Sahu','Dharma','Mumbai','Maharashtra',826984,9121522521,'yashsahuk@gmail.com'),
('Neha','Rathi','Maya nagar','Bhopal','MP',534204,8330911935,'neharathi89@gmail.com'),
('Vaishnavi','Popat','Sawant','Mumbai','Maharastra',852214,9876543210,'vaishnavipopat@gmail.com'),
('Ayur','Ninawe','Bommanahalli','Banagalore','Karnataka',725489,9139191921,'ayur567@gmail.com');

select * from addressbook1;

#uc4
UPDATE addressbook1
SET city = 'Bangalore',
state = 'Karnataka',
zip = 852369
WHERE first_name = 'Minal';

#UC5 To delete a contact using name
delete from addressbook1 where first_name='Vaishnavi';
select * from addressbook1;
1
#UC6  To retrieve contacts by city / state
select * from  addressbook1 where city='Mumbai' or state='MP';

#UC7 Size of book by city and state
select state, count(first_name) from addressbook1 group by state; 
select city, count(first_name) from addressbook1 group by city; 

#UC8  To sort the contacts for given city
select * from addressbook1 where city="Mumbai" order by first_name asc;

#UC9 To Identify each Book with Name and Type
alter table addressbook1 add type varchar(31);
select * from addressbook1;

update addressbook1 set type='FAMILY' where first_name='Aachal' or first_name='Ayur';
update addresbook1 set type='FRIEND' where first_name='Yash' or first_name='Minal';
update addressbook1 set type='PROFESSION' where first_name='Neha' or first_name='Vaishnavi';
select * from addressbook1;

#UC10 To get num contacts by type
select type, count(first_name) from addressbook group by type;
 select * from addressbook1;

#UC11 Ability to add Friend and family to each contact by adding a new column of name contact type
ALTER TABLE addressbook1 ADD contact_type VARCHAR(50);

UPDATE addressbook1 SET contact_type = 'FRIEND' WHERE first_name = 'Yash';

UPDATE addressbook1 SET contact_type = 'FAMILY' WHERE first_name = 'Yash';

UPDATE addressbook1 SET contact_type = 'FAMILI' WHERE first_name = 'Aachal';

UPDATE addressbook1 SET contact_type = 'FRIEND' WHERE first_name = 'Neha';
select * from addressbook1;

#uc12 ER Diagram
CREATE TABLE People(
     PersonId int primary key not null,
	 FirstName varchar(20) not null,
     LastName varchar(20) not null,
     PhoneNumber numeric(10),
     Email VARCHAR(50)
     );
     
 CREATE TABLE addressbookattributes(
	PersonId int,
    AddressBookName varchar(20) unique not null,
	AddressBookType varchar(20) not null,
     FOREIGN KEY (PersonId) REFERENCES People(PersonId)
   );
   CREATE TABLE Address(
     PersonId int,
     PersonAddress varchar(50) not null,
    City varchar(15) not null,
    State varchar(20) not null,
    Zip_Code numeric(6) not null,
     FOREIGN KEY (PersonId) REFERENCES People(PersonId)
     );
         