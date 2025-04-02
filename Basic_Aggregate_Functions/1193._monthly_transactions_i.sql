-- Write your PostgreSQL query statement below
-- Write an SQL query to find for each month and country,
--the number of transactions and their total amount, the number of approved transactions and their total amount.
SELECT 
   to_char(trans_date,'YYYY-MM') AS month,
   country,
   count(*) trans_count ,
   sum(CASE WHEN state ='approved' THEN 1 ELSE 0 END) approved_count,
   sum(amount)trans_total_amount,
   SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) approved_total_amount
FROM Transactions
GROUP BY country,month
order by month