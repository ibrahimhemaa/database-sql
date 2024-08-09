# Write your MySQL query statement below
# Write your MySQL query statement below
with x as(select count(distinct product_key) as cnt  from Product)
select customer_id 
from Customer 
group by 1
having count(distinct product_key)=(select cnt from x)
