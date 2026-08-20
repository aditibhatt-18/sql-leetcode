# Write your MySQL query statement below
SELECT name,bonus 
from Employee as emp LEFT JOIN Bonus as b
on emp.empId = b.empId
WHERE bonus<1000 or bonus IS NULL;