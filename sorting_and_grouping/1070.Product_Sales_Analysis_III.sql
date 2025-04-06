-- Write your PostgreSQL query statement below
select 
product_id, 
year as first_year, 
quantity,   
price
from sales
--So this filters the sales table to only return the first sale year per product.
where (product_id,year)IN(
    select product_id,min(year)
    from sales
    group by product_id
)