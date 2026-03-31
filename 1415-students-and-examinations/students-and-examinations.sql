# Write your MySQL query statement below
with student_join as(
    select student_id
    ,student_name
    ,1 as join_key
from students
),
subject_join as(
     select subject_name
     ,1 as join_key
 from subjects
),
scaffold as(
select student_id
    ,student_name
    ,subject_name
from student_join as stu left join subject_join as sub on stu.join_key=sub.join_key
)

select s.student_id
    ,s.student_name
    ,s.subject_name
    ,count(e.subject_name) as attended_exams
from scaffold as s left join examinations as e on s.student_id=e.student_id and s.subject_name=e.subject_name
where s.subject_name is not null
group by s.student_id,s.subject_name
order by s.student_id asc, s.subject_name asc