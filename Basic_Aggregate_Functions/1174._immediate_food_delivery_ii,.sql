/*

If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.

The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.

Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.

The result format is in the following example.

*/



-- Outer Query => checks if the order_date coming from subquery is equal to the customer_prefierd_delivry_dat
SELECT round(100.0*Avg(CASE WHEN order_date=customer_pref_delivery_date THEN 1 ELSE 0 END),2) as immediate_percentage 
FROM Delivery
WHERE(customer_id,order_date)IN
--SubQery => return each customer with his first order
(
SELECT customer_id,
MIN(order_date)
FROM Delivery
GROUP BY customer_id
)