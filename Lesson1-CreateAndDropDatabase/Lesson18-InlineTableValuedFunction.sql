select * from country
select * from Customer


--Table Valued Functions
  
   --Inline table valued function
   --Multi Statement table valued function

-- Inline table valued function syntax

/*
create function Function_Name(@param1 datatype,@param2 dataype)
returns Table
as
return (Select_Statement)

*/

go

alter function fn_GetCustomersByCountryId(@id int)
returns table
as
return (select Customer.Id,Customer.CustomerName,Country.CountryName from Customer
        inner join Country
		on Country.Id =Customer.CountryId
          where CountryId = @id)

go

select * from dbo.fn_GetCustomersByCountryId(3)