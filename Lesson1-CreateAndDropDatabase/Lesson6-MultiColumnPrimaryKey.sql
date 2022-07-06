CREATE TABLE PersonsWithMultiColumnPrimaryKey (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_PersonsWithMultiColumnPrimaryKey PRIMARY KEY (ID,FirstName)
);

go

insert into PersonsWithMultiColumnPrimaryKey
values(1,'Test','Test',23),
(2,'Test','Test',23)


insert into PersonsWithMultiColumnPrimaryKey
values(1,'Test','Test',23)
go

select * from PersonsWithMultiColumnPrimaryKey