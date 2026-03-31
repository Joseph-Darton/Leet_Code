# Write your MySQL query statement below
select unique_id, name
from employees as E left join employeeUNI as EU on E.id=EU.id
