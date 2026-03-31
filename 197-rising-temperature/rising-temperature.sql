# Write your MySQL query statement below
select w1.id 
##,w1.recordDate, w1.temperature as w1_temp, w2.temperature as w2_temp
from weather as w1 left join weather as w2 on w1.recordDate=date_add(w2.recordDate, interval 1 day)
where w1.temperature>w2.temperature