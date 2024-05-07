-- create database sample
-- alter database sample rename to example
-- drop database example
-- CREATE database students

-- alter database students;
-- create table grades(
-- 	id serial primary key,
-- 	full_name varchar(25),
-- 	city varchar (20),
-- 	country varchar (20),
-- 	birth_date date,
-- 	mail varchar (25),
-- 	tel_num varchar (12),
-- 	group_name varchar(15),
-- 	avg_grade real,
-- 	min_grade varchar (20),
-- 	max_grade varchar (20)
-- )

-- INSERT INTO grades (full_name, city, country, birth_date, mail, tel_num, group_name, avg_grade, min_grade, max_grade)
-- VALUES
--     ('Іванов Іван', 'Київ', 'Україна', '1998-05-10', 'ivanov@example.com', '123456789', 'Група А', 85.5, 'Математика', 'Біологія'),
--     ('Петров Петро', 'Львів', 'Україна', '1999-08-15', 'petrov@example.com', '987654321', 'Група Б', 78.3, 'Хімія', 'Математика'),
--     ('Сидорова Олена', 'Харків', 'Україна', '1997-12-20', 'sidorova@example.com', '456789123', 'Група А', 92.7, 'Література', 'Математика'),
--     ('Ковальчук Марія', 'Одеса', 'Україна', '2000-02-05', 'kovalchuk@example.com', '321654987', 'Група В', 79.8, 'Хімія', 'Фізика'),
--     ('Михайленко Олександр', 'Дніпро', 'Україна', '1996-09-30', 'mykhailenko@example.com', '789123456', 'Група В', 88.0, 'Математика', 'Хімія');

-- select * from grades
-- select full_name from grades
-- select avg_grade from grades

-- ALTER TABLE grades
-- RENAME COLUMN min_grade TO min_subject

-- ALTER TABLE grades
-- RENAME COLUMN max_grade TO max_subject

-- ALTER TABLE grades
-- ADD COLUMN min_grade real,
-- ADD COLUMN max_grade real;

-- select * from grades
-- where avg_grade > 80

-- select * from grades
-- where min_grade > 21

-- select distinct country from grades

-- select distinct city from grades

-- select distinct group_name from grades

select distinct min_subject from grades
where min_grade < 21



