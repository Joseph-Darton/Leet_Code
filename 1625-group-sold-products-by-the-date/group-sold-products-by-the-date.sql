# Write your MySQL query statement below
select
    a1.sell_date
    ,num_sold
    ,products
from
(select
    sell_date
    ,count(distinct product) as num_sold
from activities
group by sell_date)
as a1 join

(select
    sell_date
    ,group_concat(distinct product order by product asc) as products
from activities
group by sell_date)
as a2
on a1.sell_date=a2.sell_date