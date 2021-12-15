-- 1
select *
from students s 
where year(date_of_birth) = 1990;

-- 2
select *
from courses c 
where cfu > 10;

-- 3
select *
from students s 
where timestampdiff(year, date_of_birth, curdate()) > 30;

-- 4
select *
from degrees d 
where level = 'magistrale';

-- 5
select count(*) as Number_of_Departments
from departments d;

-- 6
select count(*) as Teachers_without_phone
from teachers t
where phone is null;

-- 7
select year(enrolment_date), count(*) as Students_per_year
from students s 
group by year(enrolment_date);

-- 8
select exam_id, avg(vote) as Avarage_grades 
from exam_student es 
group by exam_id;

-- 9
select department_id, count(*) as Number_of_degrees_per_Department
from degrees d 
group by department_id;

-- 10
select s.name, s.surname, s.registration_number 
from degrees d 
inner join students s 
on d.id = s.degree_id
where d.name = 'Corso di Laurea in Economia';

-- 11
select d2. name as Department_name, d.name as Degree_name, d.level as Degree_level
from degrees d 
inner join departments d2 
on d2.id = d.department_id
where d2.name = 'Dipartimento di Neuroscienze' and d.name like '%Magistrale%';

-- 12
select c.name as Course, t.name as Teacher_name, t.surname as Teacher_surname
from courses c 
inner join course_teacher ct 
on c.id = ct.course_id 
inner join teachers t 
on t.id = ct.teacher_id 
where t.name = 'Fulvio' and t.surname = 'Amato';

-- 13
select s.surname as Student_surname, s.name as Student_name, d.name as Degree_name, d2.name as Department_name
from students s 
inner join degrees d 
on d.id = s.degree_id 
inner join departments d2 
on d2.id = d.department_id
order by s.surname, s.name;