select unique_id , name 
from  Employees e  left Outer join EmployeeUNI eu
on e.id=eu.id