# Write your MySQL query statement below
SELECT NAME
FROM employee
where id in 
(select managerid
 from employee 
 group by managerid 
 having count(id)>=5);

