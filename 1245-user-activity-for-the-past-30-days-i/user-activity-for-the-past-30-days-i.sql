# Write your MySQL query statement below
SELECT activity_date AS day , count(DISTINCT user_id) AS active_users 
FROM Activity 
WHERE activity_date BETWEEN date_add('2019-07-27',INTERVAL -29 day) AND '2019-07-27'
GROUP BY 1;