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