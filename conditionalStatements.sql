begin
	declare @name varchar(20);
	declare @sal numeric(8,2);
	declare @grade char(1);

	select @name = EmpFName , @sal = Salary
	from EMPLOYEE
	where EmpCode = 9369

	if @sal >=1000
	begin 
		set @grade = 'A';
	end
	else if @sal >=1500
	begin 
		set @grade = 'B';
	end
	else if @sal >=2000
	begin 
		set @grade = 'C';
	end
	print @name + ' is in grade ' + @grade;
end


select * from EMPLOYEE