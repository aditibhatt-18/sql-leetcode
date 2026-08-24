# Write your MySQL query statement below
SELECT A1.machine_id ,         
ROUND(AVG(A2.timestamp - A1.timestamp),3) as processing_time

FROM ACTIVITY AS A1 JOIN ACTIVITY AS A2
ON A1.PROCESS_ID = A2.PROCESS_ID
AND A1.MACHINE_ID = A2.MACHINE_ID
AND A1.ACTIVITY_TYPE ='start'
AND A2.ACTIVITY_TYPE = 'end'

GROUP BY A1.machine_id