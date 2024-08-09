# Write your MySQL query statement below
SELECT user_id , count(follower_id) AS followers_count 
FROM Followers 
group BY 1
order BY 1