--delete a stored procedure

--drop procedure sp_GetAllCustomers


select * from Customer

go

create view viewCustomerDetailsForShaninul
as
select Id,CustomerName from Customer
go


select * from viewCustomerDetailsForShaninul

update viewCustomerDetailsForShaninul
set CustomerName='Indranil' where Id=9

go
 