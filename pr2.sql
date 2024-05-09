-- select * from grades
-- where 20 < min_grade and min_grade < 25;

-- select * from grades
-- where EXTRACT(YEAR FROM AGE(CURRENT_DATE, birth_date)) > 24;

-- select * from grades
-- where EXTRACT(YEAR FROM AGE(CURRENT_DATE, birth_date)) > 24 and EXTRACT(YEAR FROM AGE(CURRENT_DATE, birth_date)) < 27;

-- select * from grades
-- where full_name = 'Сидорова Олена';

select * from grades;
-- where tel_num like '%7%7%7%';

-- select mail from grades
-- where mail like 'p%';

-- select full_name, min_grade from grades;

-- select full_name, max_grade from grades;

-- select min(avg_grade) from grades;

-- select max(avg_grade) from grades;

-- select city, count(city)
-- from grades
-- group by city;

-- select country, count(country)
-- from grades
-- group by country;

-- select count(min_subject)
-- from grades
-- where min_subject = 'Математика'
-- group by min_subject;

-- select count(max_subject)
-- from grades
-- where max_subject = 'Математика'
-- group by max_subject;

-- select group_name, count(full_name)
-- from grades
-- group by group_name;

select group_name, avg(avg_grade)
from grades
group by group_name;
