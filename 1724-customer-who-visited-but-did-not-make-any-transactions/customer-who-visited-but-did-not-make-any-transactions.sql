# Write your MySQL query statement below
select customer_id, count(customer_id) as count_no_trans
from visits as V left join transactions as T on V.visit_id=T.visit_id
where transaction_id is null
group by customer_id