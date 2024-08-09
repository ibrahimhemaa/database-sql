# Write your MySQL query statement below
select x.product_id,x.year as first_year,x.quantity,x.price 
from Sales x 
join 
    (select product_id, min(year) as first 
     from Sales
     group by product_id) y
on x.product_id=y.product_id and x.year=y.first

join 
    product p on 
    x.product_id=p.product_id