# Write your MySQL query statement below
with x as (select num
from MyNumbers 
group by num
having count(num)=1)
select max(num) as num from x
