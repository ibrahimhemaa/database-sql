/* Write your T-SQL query statement below */

select employee_id,department_id
from Employee
where primary_flag='Y'
UNION 
select employee_id,max(department_id)
from Employee
group by employee_id
HAVING COUNT(department_id)=1
