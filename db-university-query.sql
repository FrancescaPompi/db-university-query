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