---------------UC1--------------
create database AddressBookService


---------------UC2---------------
create table AddressBook
(
firstname varchar(200),
lastname varchar(200),
address varchar(200),
city varchar(200),
state varchar(200),
zip int ,
phoneno int,
email varchar(200)
)

select * from AddressBook
-----------------UC3-----------------

insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('ishwar','rathod','beed','beed','MH',456,33344,'dadf')
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('savi','jadhav','Kaij','beed','MH',456,33344,'fdfa')
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('raj','ade','bsp','Wadwani','MH',456,33344,'sadg')
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('prem','rathod','majalgaon','Beed','MH',456,33344,'aadf')
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('parju','pathak','Telgaon','Beed','MH',456,33344,'grfdha')

select * from AddressBook
------------------------UC4--------------------


update AddressBook
set lastname='Rathod'
where firstname='ishwar'

select * from AddressBook

------------------------UC5-----------------
delete from AddressBook
where firstname='praju'

select * from AddressBook

------------------------UC6-----------------
select * from AddressBook
where address='telgaon'

select * from AddressBook
where city='Beed'

select * from AddressBook
------------------UC7-----------------------

select count('city') from AddressBook
select count('state') from AddressBook


--------------------UC8-------------------
select * from AddressBook order by firstname

---------------------UC9------------
 alter table AddressBook 
 add AddressBookName varchar(30)
 
 alter table AddressBook 
 add AddressBookType varchar(30)

------------------UC10-------------------------
SELECT * FROM AddressBook
alter table AddressBook  add AddressBookName varchar(30),AddressBookType varchar(30);
update AddressBook set AddressBookName = 'Family address book', AddressBookType = 'Family' where firstname='ishwar';
update AddressBook set AddressBookName = 'Friends address book', AddressBookType = 'Friends' where firstname='raj';
update AddressBook set AddressBookName = 'Friends address book', AddressBookType = 'Friends' where firstname='kavi';
update AddressBook set AddressBookName = 'Friends address book', AddressBookType = 'Friends' where firstname='savi';

select count(AddressBookType) from AddressBook where AddressBookType = 'Family';