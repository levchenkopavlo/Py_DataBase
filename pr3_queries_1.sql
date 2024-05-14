-- Вивести вміст таблиці палат.
select * from wards;

-- Вивести прізвища та телефони усіх лікарів.
select surname, phone from doctors;

-- Вивести усі поверхи без повторень, де розміщуються палати.
select distinct floor 
from wards;

-- Вивести назви захворювань під назвою «Name of Disease» та ступінь їхньої тяжкості під назвою «Severity of Disease».
select name as "Name of Disease", severity as "Severity of Disease" 
from diseases;

-- Вивести назви відділень, які знаходяться у корпусі 5 з фондом фінансування меншим, ніж 30000.
select name 
from departments
where building = 5 and financing <30000;

-- Вивести назви відділень, які знаходяться у корпусі 3 з фондом фінансування у діапазоні від 12000 до 15000.
select name 
from departments
where building = 3 and financing between 12000 and 15000;

-- Вивести назви палат, які знаходяться у корпусах 4 та 5 на 1-му поверсі.
select name
from wards
where (building in (4, 5)) and (floor = 1);

-- Вивести назви, корпуси та фонди фінансування відділень, які знаходяться у корпусах 3 або 6 та мають
-- фонд фінансування менший, ніж 11000 або більший за 25000.
select name, building, financing 
from departments
where building in (3, 6) and not (financing between 11000 and 25000);

-- Вивести прізвища лікарів, зарплата (сума ставки та надбавки 120) яких перевищує 1500.
select surname
from doctors
where salary + 120 > 1500;

-- Вивести прізвища лікарів, у яких половина зарплати перевищує триразову надбавку у вигляді 500
select surname
from doctors
where salary / 2 > 500 * 3;

-- Вивести назви обстежень без повторень, які проводяться у перші три дні тижня з 12:00 до 15:00.
select distinct name
from examinations
where (dayofweek between 1 and 3) and (starttime >= '12:00') and (endtime <= '15:00');

-- Вивести назви та номери корпусів відділень, які знаходяться у корпусах 1, 3, 8 або 10.
select name, building
from departments
where building in (1, 3, 8, 10);

-- Вивести назви захворювань усіх ступенів тяжкості, крім 1-го та 2-го
select name, severity
from diseases
where severity not in (1, 2);

-- Вивести назви відділень, які не знаходяться у першому або третьому корпусі
select name, building
from departments
where building not in (1, 3);

-- Вивести назви відділень, які знаходяться у першому або третьому корпусі.
select name, building
from departments
where building in (1, 3);

-- Вивести прізвища лікарів, що починаються з літери «N»
select surname
from doctors
where surname like 'М%';

-- виведіть імена лікарів які отримають найбільшу зарплату
select name
from Doctors
where Salary = (select max(Salary) from Doctors);


with MaxSalary as (
    select max(Salary) as MaxSalary
    from Doctors
)
select name
from Doctors, MaxSalary
where Doctors.Salary = MaxSalary.MaxSalary;
