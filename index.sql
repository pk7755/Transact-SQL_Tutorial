

create clustered index in_cl_index on Employee(EmpCode);

create nonclustered index name_cl_index on Employee(EmpFName);

drop index in_cl_index on Employee;

drop index name_cl_index on Employee;

EXEC sys.sp_helpindex @objname = N'Employee';

select * 
from EMPLOYEE;


