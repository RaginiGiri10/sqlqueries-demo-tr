Select * from Country
Select * from Customer
go

--Create stored procedure
create procedure sp_GetAllCustomers
as
Begin
Select * from Customer
End

go

-- executing the stored procedure
exec sp_GetAllCustomers
execute sp_GetAllCustomers

--Modifying a stored procedure
go

Alter procedure sp_GetAllCustomers
as
Begin
Select Id,CustomerName from Customer
End

go

execute sp_GetAllCustomers