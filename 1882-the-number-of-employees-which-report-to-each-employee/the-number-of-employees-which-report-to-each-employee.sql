/* Write your T-SQL query statement below */
select e.employee_id,e.name,count(e1.reports_to) as reports_count,round(avg(e1.age*1.0),0) as average_age
from Employees e 
inner join
    Employees e1
    on e.employee_id=e1.reports_to
    
GROUP BY e.employee_id, e.name
order by e.employee_id;