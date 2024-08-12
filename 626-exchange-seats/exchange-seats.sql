/* Write your T-SQL query statement below */
select case
    when id%2=1 and id+1 not in(select id from Seat)then id
    when id%2=0 then id-1
    else id+1 end as id , student
from Seat order by id; 