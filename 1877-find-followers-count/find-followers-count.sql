# Write your MySQL query statement below
select user_id , count(follower_id) AS followers_count 
from Followers 
GROUP BY 1
ORDER BY 1