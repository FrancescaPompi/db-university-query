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