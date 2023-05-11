begin
	declare @name varchar(50);
	declare @sal int;

	select @name = EmpFName , @sal = Salary
	from EMPLOYEE
	where EmpCode=9369

	print @name + ' earns ' + cast(@sal as varchar);

end

use SQLTest
select *
from employee;