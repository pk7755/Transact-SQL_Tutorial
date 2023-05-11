alter trigger EmpSalCheck on employee for update as 
begin
	declare @oldsal decimal(6,2);
	declare @newsal decimal(6,2);

	select @oldsal = salary from deleted;
	select @newsal = salary from inserted;

	if ( @oldsal > @newsal )
	begin
		print 'New salary cannot be less than old salary';
		Rollback;	
	end;
	else
	begin
		print 'New salary is updated';
		commit;
	end;
end;


update EMPLOYEE set salary = salary-1;

select * from EMPLOYEE;




