
create table Employee(
Id int primary key identity(1,1),
[Name] varchar(20),
ManagerId int
)

go

insert into Employee values
('Mike',3),
('Rob',1),
('Todd',null),
('Ben',1),
('Sam', 1)
go
select * from Employee
go

--Employee  Manager
--Mike       Todd
--Rob        Mike
--Todd       Null
--Ben        Mike
--Sam        Mike

select E.Name as Employee,M.Name as Manager from Employee E
inner join Employee M
on E.ManagerId = M.Id


select E.Name as Employee,M.Name as Manager from Employee E
left join Employee M
on E.ManagerId = M.Id