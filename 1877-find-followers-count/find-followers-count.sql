# Write your MySQL query statement below
SELECT user_id , count(follower_id) AS followers_count 
FROM Followers 
GROUP BY 1
order by 1