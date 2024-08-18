/* Write your T-SQL query statement below */
select x.product_name,sum(u.unit) as unit from Orders u left join Products x on x.product_id=u.product_id
where year(u.order_date)=2020 and month(u.order_date)=2
group by u.product_id,x.product_name
having(sum(u.unit))>=100
order by sum(u.unit) desc,x.product_name