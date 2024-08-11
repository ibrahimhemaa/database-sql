/* Write your T-SQL query statement below */
select l1.num as ConsecutiveNums
from Logs l1
join
Logs l2 on l1.num=l2.num and l1.id+1=l2.id
join
Logs l3 on l2.num=l3.num and l2.id+1=l3.id
group by l1.num