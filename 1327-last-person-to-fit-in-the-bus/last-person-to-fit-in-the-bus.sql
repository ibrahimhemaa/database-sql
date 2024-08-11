/* Write your T-SQL query statement below */
with x as(select person_name,weight,turn,sum(weight) over (order by turn) as total from Queue)
select top 1 person_name 
from x
where total<=1000
order by total desc
-- limit 1;