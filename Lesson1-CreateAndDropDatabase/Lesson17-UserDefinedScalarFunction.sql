
--User Defined Functions
 
  -- Scalar Function - A function that accepts zero or more parameters and return a single value.
     
/*
  create function <funcationname> (parameters)
  Returns <return-type>
  as 
  Begin
  .
  .
   Return <return-type>
  End

  */

select * from Country
go

Create function fn_GetCountryNameById(@id int)
Returns varchar(20)
as
Begin
return (select CountryName from Country where Id= @id)
End

go

select dbo.fn_GetCountryNameById(2)