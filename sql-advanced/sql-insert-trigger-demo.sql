create table tblProductAudit
(
Id int primary key identity(1,1),
ProductId int,
ProductName varchar(50),
CreatedDate date null,
ModifiedDate date null
)

go


Create Trigger trigger_tblProduct_ForInsert
on tblProducts
For Insert
as
begin

Declare @id int
Declare @name varchar(50)

select @id= Id, @name = [Name] from inserted

insert into tblProductAudit (ProductId,ProductName,CreatedDate)
values(@id,@name,GETDATE())
end

go

select * from tblProducts

select * from tblProductAudit

go

insert into tblProducts values('Apple Watch','Apple watch series 7')

