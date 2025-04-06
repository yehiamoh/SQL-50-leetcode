-- Write your PostgreSQL query statement below
select class
from courses
group by class
Having count(class)>=5