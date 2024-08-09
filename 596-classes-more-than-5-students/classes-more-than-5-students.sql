# Write your MySQL query statement below
SELECT class 
From Courses 
GROUP BY 1
HAVING COUNT(student)>=5 