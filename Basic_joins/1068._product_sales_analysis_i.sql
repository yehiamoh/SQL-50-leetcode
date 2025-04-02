select product_name,year,price
From Sales s inner join Product p
on p.product_id  = s.product_id