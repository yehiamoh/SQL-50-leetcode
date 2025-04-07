-- Write your PostgreSQL query statement below
select mgr.employee_id,mgr.name,count(emp.reports_to) as reports_count,avg(emp.age)::int as average_age 
from  employees mgr join  employees emp
on mgr.employee_id=emp.reports_to
group by mgr.employee_id,mgr.name
order by mgr.employee_id

