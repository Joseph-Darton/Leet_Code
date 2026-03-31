# Write your MySQL query statement below
select product_name, year, price
from sales as S join product as P on S.product_id=P.product_id