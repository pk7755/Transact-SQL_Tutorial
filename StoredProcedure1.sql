alter proc SampleQuery @id int, @name varchar(15) output , @sal decimal(8,2) output as
begin
	select @name=EmpFName, @sal = salary from EMPLOYEE where EmpCode = @id;
end;

begin
	declare @empName varchar(15);
	declare @salary decimal(8,2);

	exec SampleQuery 101, @empName output,@salary output;

	print @empName;
	print @salary;
end;

