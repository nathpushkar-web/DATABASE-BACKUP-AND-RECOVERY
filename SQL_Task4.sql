/*
INTERNSHIP TASK - 4
=======================================================================================================================================================================================
DATABASE BACKUP AND RECOVERY

DEMONSTRATE HOW TO BACK UP A DATABASE AND RESTORE IT IN CASE OF FAILURE.
 =======================================================================================================================================================================================
*/


create database CodTech

use CodTech

create table Salesman (
"Salesmanld" int not null Primary Key,
"SalesmanName" varchar(50),
"Commission" int,
"City" varchar(50) default 'USA',
"Age" int
);

select *from Salesman

insert into Salesman Values
(101,'John',50,'California',17),
(102,'Simon',75,'Texas',25),
(103,'Jessie',105,'Florida',35),
(104,'Danny',100,'Texas',22),
(105,'Lia',65,'New Jersy',30);

select *from Salesman


create table Customer (
"Salesmanld" int foreign key References Salesman(Salesmanld),
"Customerld" int,
"CustomerName" varchar(50) not null,
"PurchaseAmount" int
);

select *from Customer

insert into Customer Values
(101,2345,'Andrew',550),
(103,1575,'Lucky',4500),
(104,2345,'Andrew',4000),
(107,3747,'Remona',2700),
(110,4004,'Julia',4545),
(102,2345,'Eden',5550),
(105,1575,'Lucy',4500);

select *from Customer


BACKUP DATABASE YourDB TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\SQL_Task4'
RESTORE DATABASE YourDB FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\CodTech_LogBackup_2025-06-15_18-08-22.bak'
WITH REPLACE;