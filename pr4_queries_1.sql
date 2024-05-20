--  Виведіть повні імена лікарів та їх спеціалізації
select doctors.name, doctors.surname, Specializations.name
from doctors
JOIN DoctorsSpecializations ON Doctors.Id = DoctorsSpecializations.DoctorId
JOIN Specializations ON DoctorsSpecializations.SpecializationId = Specializations.Id;

-- Виведіть прізвища та зарплати (сума ставки та надбавки) лікарів, які не перебувають у відпустці

select doctors.surname, doctors.salary
from doctors
where id not in (
	select doctorid 
	from vacations
);

-- Виведіть назви палат, які знаходяться у відділенні «Intensive Treatment».
select wards.name
from wards
where wards.departmentid = (
	select departments.id
	from departments
	where departments.name = 'Терапевтичний відділ'
);

-- Виведіть назви відділень без повторень, які спонсоруються компанією «Umbrella Corporation».
select departments.name
from departments
join donations on donations.departmentid = departments.id
join sponsors on donations.sponsorid = sponsors.id;