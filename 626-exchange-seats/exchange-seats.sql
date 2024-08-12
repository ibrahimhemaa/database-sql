/* Write your T-SQL query statement below */
with mx as(select max(id) as mxs from Seat)
select case
    when id%2=1 and id=mx.mxs then id
    when id%2=0 then id-1
    else id+1 end as id , student
from Seat,mx order by id; 