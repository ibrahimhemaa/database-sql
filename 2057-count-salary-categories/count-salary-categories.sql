/* Write your T-SQL query statement below */
with ts as ( SELECT 
        SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS Low,
        SUM(CASE WHEN income >= 20000 AND income <= 50000 THEN 1 ELSE 0 END) AS Average,
        SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) AS High
    FROM Accounts )
select 'Low Salary'  as category,sum(Low)  as accounts_count from ts
union all

select 'Average Salary'  as category,sum(Average) as accounts_count from ts
union all 

select 'High Salary'  as category,sum(High) as accounts_count from ts
