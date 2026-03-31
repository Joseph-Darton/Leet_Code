# Write your MySQL query statement below
select
    project_id
    ,ifnull(round(avg(experience_years),2),0) as average_years
from project as p join employee as e on p.employee_id=e.employee_id
group by project_id