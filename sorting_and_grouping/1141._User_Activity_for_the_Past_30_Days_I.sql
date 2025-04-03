-- Write your PostgreSQL query statement below
select activity_date as day , count(DISTINCT user_id) active_users
from Activity
-- from 28-6 to 27-7 (30 days)
where activity_date Between ('2019-07-27'::Date - interval '29' day) AND '2019-07-27'
group by activity_date