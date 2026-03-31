# Write your MySQL query statement below
select
    user_id
    ,name
    ,mail
from users
where regexp_like(mail,'^[a-zA-Z][a-zA-Z-._0-9]*@leetcode\\.com$', 'c')