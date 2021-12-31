create database AddressBook_Service
select name from sys.databases
use AddressBook_Service



create Table address_Book
(
id int identity (1,1) primary key,
Firstname varchar(20), 
Lastname varchar (20),
address varchar(20), 
City varchar (27), 
State varchar (15),
Zip varchar (6), 
PhoneNumber varchar(15),
Email varchar(35)
);

exec sp_help address_Book
select * from address_Book



insert into address_Book(Firstname,Lastname,address,City,State,Zip,PhoneNumber,Email) Values
( 'Roopa', 'Jamadar', 'Khandal', 'Kalaburagi', 'Karnataka', '585304', '9901123984', 'roopajamadar123@bridgelabz.com' ),
( 'Shradha', 'Jadhav', 'Pune', 'Pune', 'Maharashtra', '411001', '8934567523', 'shradha799@bridgelabz.com' ),
( 'Vaishnavi', 'Vishwakarma', 'Bidar', 'Bidar', 'Karnataka', '565304', '8943026538', 'vaish756@bridgelabz.com' ),
( 'Ganesh', 'Jamadar', 'kantekur', 'umerga', 'Maharashtra', '413606', '9038294056', 'prabhu999@bridgelabz.com' ),
( 'Sireesha', 'Vemulapalli', 'GandhiNagar', 'Kurnool', 'AndhraPradesh', '562134', '9876543210', 'siri9153@bridgelabz.com' ),
( 'NaveenChand', 'Moparthi', 'Chinaravuru', 'Tenali', 'AndhraPradesh', '568753', '8796054859', 'naveen799@bridgelabz.com' );


Update address_Book set PhoneNumber = '9848032919' where Firstname = 'Roopa';
Update address_Book set Email = 'ganesh70@bridgelabz.com' where Firstname = 'Ganesh';


Delete From address_Book where Firstname = 'Sireesha'
select * from address_Book


Select City From address_Book Where Firstname = 'Roopa'
Select State From address_Book Where Firstname = 'Ganesh'


Select COUNT (*) State From address_Book
Select COUNT(*) City From address_Book

Select * From address_Book Where City = 'Kalaburagi' Order By Firstname


Alter Table address_Book Add ContactType varchar(27);

Update address_Book Set ContactType = 'Family' Where Firstname = 'Roopa';
Update address_Book Set ContactType = 'Family' Where PhoneNumber = '8934567523';
Update address_Book Set ContactType = 'Friends' Where Lastname = 'Vishwakarma';
Update address_Book Set ContactType = 'Friends' Where Email = 'ganesh70@bridgelabz.com';
Update address_Book Set ContactType = 'Profession' Where Firstname = 'NaveenChand';

select * from address_Book
