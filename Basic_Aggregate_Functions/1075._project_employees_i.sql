select p.project_id,ROUND(AVG(experience_years),2) average_years
from Project p inner join Employee e
on p.employee_id=e.employee_id
Group by p.project_id