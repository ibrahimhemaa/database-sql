/* Write your T-SQL query statement below */
/*departmentId salary top 3 unique in each department  */
select d.name as Department, e4.name as Employee, e4.salary as Salary
FROM
Employee e4
INNER JOIN
(select departmentId, salary, row_num
FROM
(
select departmentId, salary,
ROW_NUMBER() OVER (partition by departmentId order by salary desc) as row_num
FROM
(select DISTINCT departmentId, salary
FROM Employee
group by departmentId,salary) e1
) e2
where row_num<=3) e3
ON e3.departmentId=e4.departmentId AND e3.salary=e4.salary
INNER JOIN Department d ON e4.departmentId=d.id