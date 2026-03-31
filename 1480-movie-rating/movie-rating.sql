# Write your MySQL query statement below
(select
    name as results
from movierating as mr join users as u on mr.user_id=u.user_id
group by mr.user_id
order by count(mr.user_id) desc, name
limit 1)

union all

(select
    title as results
from movies as m join movierating as mr on m.movie_id=mr.movie_id
where extract(year_month from created_at) = 202002
group by title
order by avg(rating) desc, title
limit 1)