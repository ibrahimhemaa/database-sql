# Write your MySQL query statement below
SELECT x.product_id,x.year AS first_year,x.quantity,x.price 
FROM Sales x 
JOIN 
    (SELECT product_id, min(year) AS first_year 
     FROM Sales
     GROUP BY 1) y
ON x.product_id=y.product_id AND x.year=y.first_year

JOIN 
    product p ON 
    x.product_id=p.product_id