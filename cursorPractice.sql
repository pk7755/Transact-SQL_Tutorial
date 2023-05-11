begin
	declare @empId int;
	declare @firstName varchar(15);
	declare @salary decimal(6,2);

	declare empcur cursor for
	select EmpCode,EmpFName,Salary from EMPLOYEE where DEPTCODE=20;
	open empcur;
	fetch next from empcur into @empId,@firstName,@salary;
	while @@FETCH_STATUS=0
	begin
		print cast(@empId as varchar(15))+ ' ' +@firstName+' '+cast(@salary as varchar(15));
		fetch next from empcur into @empId, @firstName,@salary;
	end
	close empcur;
	deallocate empcur;
end;
