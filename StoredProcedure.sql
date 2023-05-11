create procedure EmpSalaryIncrement @deptId as int as
begin
	declare @empId int;
	declare @firstName varchar(15);
	declare @salary decimal(6,2);

	declare empcur cursor for
	select EmpCode,EmpFName,Salary from EMPLOYEE where DEPTCODE=@deptID;
	open empcur;
	fetch next from empcur into @empId,@firstName,@salary;
	while @@FETCH_STATUS=0
	begin
		if @salary >=3000
		begin
			set @salary = @salary + 1000;
		end
		else
		begin
			set @salary = @salary +500;
		end;

		update EMPLOYEE set salary = @salary where EmpCode = @empId;
		print cast(@empId as varchar(15))+ ' ' +@firstName+' '+cast(@salary as varchar(15));
		fetch next from empcur into @empId, @firstName,@salary;
	end;
	close empcur;
	deallocate empcur;
end;


execute EmpSalaryIncrement 10

select * from EMPLOYEE
begin transaction
commit