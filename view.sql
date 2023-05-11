
create view EmpTable1 as 
select [EmpCode],[EmpFName],[EmpLName]
from employee;

drop view EmpTable


begin Transaction
save transaction s2

alter table Employee
drop column [EmpFName];

delete
from EMPLOYEE
where EmpCode=101;

rollback transaction s2
