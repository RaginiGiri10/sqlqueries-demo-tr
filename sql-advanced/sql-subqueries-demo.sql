create database ProductDB
go

use ProductDB
go

create table tblProducts
(
 Id int identity(1,1) primary key,
 [Name] varchar(50),
 [Description] varchar(100)
)

go

create table tblProductSales
(
Id int identity(1,1) primary key,
ProductId int foreign key references tblProducts(Id),
UnitPrice int,
QuantitySold int
)

go

insert into tblProducts values
('TV','50inch Led TV'),
('Laptop','13 inch'),
('Desktop','High performance desktop')

go

select * from tblProducts
go

insert into tblProductSales values
(3,150000,5),
(2,55000,6),
(3, 150000, 4),
(3, 150000,10)

go

select * from tblProducts
select * from tblProductSales

--using joins

select p.Id,p.Name,p.Description
from tblProducts P
left join tblProductSales PS
on p.Id =ps.ProductId
where ps.ProductId is null

--using subqueries

select Id,[Name],[Description]
from tblProducts where Id Not  in (select distinct ProductId from tblProductSales)


--using joins

-- query to get the product by TotalQuantity


select p.Name, IsNull(Sum(PS.QuantitySold),0) as TotalQuantity
from tblProducts P 
left join tblProductSales PS
on p.Id =ps.ProductId
group by p.Name


select SUm(QuantitySold) from tblProductSales
-- sub query to get the product by TotalQuantity




select * from tblProducts
select * from tblProductSales

select P.Name , (select Sum(QuantitySold) from tblProductSales where ProductId=p.Id) as TotalQuantity
from tblProducts P