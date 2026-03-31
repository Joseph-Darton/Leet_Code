# Write your MySQL query statement below
select name
    , bonus
from employee as E left join bonus as B on E.empId=B.empID
where bonus<1000 or bonus is null