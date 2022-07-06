
use CUSTOMERDB
go

--drop table Customer

create table Customer(
Id int,
FirstName varchar(10),
LastName varchar(10),
Age int
)



-- Read data from customer table

select * from Customer

-- Read sepecific column

select Id,FirstName from Customer

--Insert records to customer table

insert into Customer (Id,FirstName,LastName,Age,Salary)
values(1,'James','Bond',40,30000)

insert into Customer
values(2,'Tina','Mariam',25,18000)

insert into Customer(Id)
values(3)

insert into Customer
values(2,'John','Robert',25,54000)

--Filter records

select * from Customer where Salary>20000

select * from Customer where Salary >20000 and Age<30

select * from Customer

select MAX(Salary) as [Maximum Salary] from Customer

select Min(Salary) as [Minimum Salary] from Customer

select COUNT(*) as [Total Customers] from Customer

select COUNT(1) as [Total Customers] from Customer

select SUM(Salary) as [Total Salary] from Customer