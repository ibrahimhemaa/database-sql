/* Write your T-SQL query statement below */
with unique_all as(
    select lat,lon 
    from Insurance
    group by lat,lon
    having count(*)=1 
),
rep_tiv15 as(
    select tiv_2015 
    from Insurance
    group by tiv_2015
    having count(*)>1
)
select round(sum(a.tiv_2016),2) as tiv_2016 
from Insurance a
where tiv_2015 in (select tiv_2015 from rep_tiv15) and exists(
    select 1
    from unique_all x
    where a.lat=x.lat and a.lon=x.lon
);