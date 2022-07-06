select * from Country
select * from customer where id=3

go

create procedure sp_GetCustomersById
@id int
as
Begin
select * from customer where Id=@id
End

go

exec sp_GetCustomersById 3

go


create procedure sp_GetCustomersByCountryName
@countryName varchar(20)
as
Begin
select Customer.Id,Customer.CustomerName,Country.CountryName  from Customer 
inner join Country
on Customer.CountryId = Country.Id
where Country.CountryName = @countryName
End

go

exec sp_GetCustomersByCountryName 'UK'