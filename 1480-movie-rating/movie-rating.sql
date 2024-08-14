/* Write your T-SQL query statement below */
with fst as (
    select top 1 u.name as name 
    from Users u 
    inner join MovieRating m on u.user_id = m.user_id 
    group by m.user_id, u.name
    order by count(m.user_id) desc, u.name
), 
lst as (
    select top 1 t.title as title 
    from Movies t 
    inner join MovieRating m on t.movie_id = m.movie_id
    where year(m.created_at) = 2020 and month(m.created_at) = 2
    group by m.movie_id,t.title
    order by avg(cast(m.rating as decimal)) desc, t.title
)
select name as results from fst 
union all
select title as result from lst
