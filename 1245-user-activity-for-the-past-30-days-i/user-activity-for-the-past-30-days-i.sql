# Write your MySQL query statement below
SELECT 
    activity_date as day,
    count(distinct(user_id )) as active_users 
FROM Activity
GROUP BY activity_date
having DATE_ADD(activity_date, INTERVAL 30 DAY) > '2019-07-27'  and activity_date<='2019-07-27'