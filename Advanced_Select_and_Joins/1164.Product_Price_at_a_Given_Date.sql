select distinct product_id ,10 as price
from products
group by product_id
having (min(change_date)> '2019-8-16')

union 

select product_id,new_price as price
from products
where (product_id,change_date)IN(
    select product_id,max(change_date)
    from products
    WHERE change_date <='2019-8-16'
    GROUP BY product_id
)
order by product_id