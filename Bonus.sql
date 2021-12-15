-- Bonus
select s.id, count(exam_id) 
from exam_student es
inner join students s 
on s.id = es.student_id
group by s.id;