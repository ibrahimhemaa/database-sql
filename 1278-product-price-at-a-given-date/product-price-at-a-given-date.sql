/* Write your T-SQL query statement below */
SELECT 
    p.product_id,
    COALESCE(
        (select top 1  p1.new_price from Products p1
        where p.product_id=p1.product_id and p1.change_date<='2019-08-16'
        order by p1.change_date desc ),10
    ) as price
FROM (select Distinct product_id from Products) as p;