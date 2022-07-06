declare @numerator int = 10;
declare @denominator int =0;
declare @result int;

begin try

if(@denominator=0)
throw 60001,'Denominator cannt be zero',1
else
begin
set @result =@numerator/@denominator
print @result
end

end try

begin catch

print Error_Number()
print Error_Message()
print Error_Line()
print Error_State()

end catch



select Error_State()