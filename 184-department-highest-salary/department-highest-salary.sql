# Write your MySQL query statement below
select d.name as Department , e.name as Employee , e.salary as Salary 
from department d join 
employee e on e.departmentId = d.id
where (e.departmentid,e.salary) in (select e.departmentid,max(salary)from employee e group by departmentid);