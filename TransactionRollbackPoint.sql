begin transaction
	save transaction s1
	delete from EMPLOYEE where EmpCode = 105;

	save transaction s2
	delete from EMPLOYEE where EmpCode = 108;

	rollback transaction s1
	commit

select *
from EMPLOYEE