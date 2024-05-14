-- alter table friut_and_vegetables rename to  fruit_and_vegetables;

select * from fruit_and_vegetables;

-- select name 
-- from fruit_and_vegetables
-- where energy < 40;

-- select name 
-- from fruit_and_vegetables
-- where energy between 20 and 50;

-- select name 
-- from fruit_and_vegetables
-- where name like '%ор%';

-- select name 
-- from fruit_and_vegetables
-- where description like '%вітам%';

-- select name 
-- from fruit_and_vegetables
-- where color = 'червоний' or color = 'жовтий';

select count(*) 
from fruit_and_vegetables
where type = 'овоч';

select count(*) 
from fruit_and_vegetables
where type = 'фрукт';

select count(*) from fruit_and_vegetables
where (color = 'червоний' or color = 'жовтий') and (type = 'овоч' or type = 'фрукт');

select type, count(*) from fruit_and_vegetables
where (color = 'червоний' or color = 'жовтий')
group by type;

select color, count(*) from fruit_and_vegetables
group by color;


select color, count(*) AS counter from fruit_and_vegetables
group by color
having count(*) = (select min(counter) from (
    select count(*) as counter
    from fruit_and_vegetables
    group by color
) as subquery);

select color, count(*) AS counter from fruit_and_vegetables
group by color
having count(*) = (select max(counter) from (
    select count(*) as counter
    from fruit_and_vegetables
    group by color
) as subquery);

select min(energy) from fruit_and_vegetables;

select max(energy) from fruit_and_vegetables;

select avg(energy) from fruit_and_vegetables;

select name
from fruit_and_vegetables
where energy = (
    select min(energy)
    from fruit_and_vegetables
);

select name
from fruit_and_vegetables
where energy = (
    select max(energy)
    from fruit_and_vegetables
);

