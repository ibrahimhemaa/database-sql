/* Write your T-SQL query statement below */
select * from Users where mail like '[a-z A-Z]%' and mail like '%@leetcode.com' and left(mail,LEN(mail) - 13) not like '%[^A-Za-z0-9._-]%'