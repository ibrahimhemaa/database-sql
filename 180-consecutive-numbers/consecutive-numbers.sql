/* Write your T-SQL query statement below */
select l1.num AS ConsecutiveNums
from Logs l1
JOIN
Logs l2 ON l1.num=l2.num AND l1.id+1=l2.id
JOIN
Logs l3 ON l2.num=l3.num AND l2.id+1=l3.id
GROUP BY l1.num