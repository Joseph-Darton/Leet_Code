# Write your MySQL query statement below
with cte as (
select 
e.name
,d.name as department
,salary
,dense_rank() over (partition by d.name order by salary desc) as ranked
from employee as e join department as d on e.departmentId=d.id
order by d.name, salary desc
)

select
    department
    ,name as employee
    ,salary
from cte
where ranked<=3