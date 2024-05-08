-- CREATE DATABASE Birds

-- ALTER DATABASE Birds RENAME TO Cats

-- drop database cats

-- create database friut_and_vegetables;

-- create table friut_and_vegetables (
-- 	id serial primary key,
-- 	name varchar(25) not null,
-- 	type varchar (25) not null,
-- 	energy integer,
-- 	description text
-- )

-- alter table friut_and_vegetables	
-- add column color varchar (25)


-- INSERT INTO friut_and_vegetables (name, type, color, energy, description)
-- VALUES
--     ('Морква', 'овоч', 'помаранчевий', 41, 'Багата на бета-каротин, добре впливає на зір і шкіру.'),
--     ('Яблуко', 'фрукт', 'червоний', 52, 'Солодке, соковите плодове дерево.'),
--     ('Помідор', 'овоч', 'червоний', 18, 'Багаті на лікопен, корисні для здоров''я серця.'),
--     ('Банан', 'фрукт', 'жовтий', 89, 'Джерело калію, важливого мінералу для м''язів і нервової системи.'),
--     ('Капуста', 'овоч', 'зелений', 25, 'Містить велику кількість вітаміну C та фітонцидів.');

-- select * from friut_and_vegetables

-- select * from friut_and_vegetables
-- where type = 'овоч'

-- select * from friut_and_vegetables
-- where type = 'фрукт'

-- select name from friut_and_vegetables

-- select distinct color from friut_and_vegetables

-- select name from friut_and_vegetables
-- where type = 'фрукт' and color = 'жовтий'

select name from friut_and_vegetables
where type = 'овоч' and color = 'зелений'


