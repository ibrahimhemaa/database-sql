/* Write your T-SQL query statement below */
delete person1 from Person person1 inner join  Person person2 on person1.id>person2.id and person1.email=person2.email
