


declare @table Table(CustomerId int, CustomerName varchar(20))

insert into @table
Select ID,CustomerName from Customer

select * from @table

declare @maxCustomerId int

select @maxCustomerId = max(CustomerId) from @table

select @maxCustomerId as MaxCustomerId
