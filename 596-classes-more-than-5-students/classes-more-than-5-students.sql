# Write your MySQL query statement below
SELECT class 
From Courses 
group by class
having COUNT(student)>=5 