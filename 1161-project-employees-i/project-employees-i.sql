# Write your MySQL query statement below
SELECT P.project_id , ROUND (avg (E.experience_years),2) AS average_years
FROM PROJECT AS P  JOIN EMPLOYEE AS E
ON P.employee_id = E.employee_id 
GROUP BY project_id;