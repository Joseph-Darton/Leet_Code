# Write your MySQL query statement below
WITH CTE1 AS(
select machine_id, process_id, activity_type,
IF(activity_type='start',timestamp*-1,timestamp) as new_timestamp
from activity
group by machine_id, process_id, activity_type
), CTE2 AS(
    select machine_id, process_id,
sum(new_timestamp) as time_taken
from CTE1
group by machine_id, process_id
)

select machine_id
    ,round(avg(time_taken),3) as processing_time
from CTE2
group by machine_id