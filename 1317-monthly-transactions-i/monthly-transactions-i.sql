/* Write your T-SQL query statement below */
select 
format(trans_date,'yyyy-MM') as month , 
country, 
count(id) as trans_count , 
SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) as approved_count , 
sum(amount) as trans_total_amount ,
sum (CASE WHEN state ='approved' THEN amount else 0 end) as approved_total_amount 
from transactions 
group by format(trans_date,'yyyy-MM'),country;
