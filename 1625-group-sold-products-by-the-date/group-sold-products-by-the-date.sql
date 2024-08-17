/* Write your T-SQL query statement below */
WITH UniqueActivities AS (
    SELECT DISTINCT 
        sell_date, 
        product
    FROM 
        Activities
)
SELECT 
    sell_date, 
    COUNT(sell_date) AS num_sold, 
    STRING_AGG(product, ',' ) AS products
FROM 
    UniqueActivities
GROUP BY 
    sell_date
ORDER BY 
    sell_date;