
Begin Transaction
insert into Product values 
(4,'Mobile',75000,4)

insert into Product values 
(5,'Abcdefghjhkjkjkjkjkjklhkxhckljckljcklasjcklajcklajckljcklacj',32000,5)

if(@@ERROR >0) -- If there is any error in the transaction then rollback the transaction.

Begin
Rollback Transaction
End

Else

Begin 
Commit Transaction
End
