# Write your MySQL query statement below
select
    product_name
    ,sum(unit) as unit
from(
select
    extract(year_month from order_date) as date
    ,product_name
    ,unit
from products as p join orders as o on p.product_id=o.product_id
where extract(year_month from order_date) = '202002'
) as sub
group by product_name
having sum(unit)>=100