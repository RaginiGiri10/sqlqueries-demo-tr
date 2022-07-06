
--Multi statement table valued functions.

create function fn_GetCustomers()
returns @table Table(CustomerId int, CustomerName varchar(20))
as 
Begin

insert into @table
Select ID,CustomerName from Customer

return

End

go



select * from dbo.fn_GetCustomers()



