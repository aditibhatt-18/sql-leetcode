# Write your MySQL query statement below
select id,
CASE 
WHEN P_ID IS NULL THEN 'Root'
WHEN ID IN ( select P_ID from tree) THEN 'Inner'
ELSE 'Leaf'
END as type
from tree;