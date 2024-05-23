-- 1. Виведіть усі можливі пари рядків викладачів і груп.
SELECT 
	TEACHERS.NAME AS NAME,
	TEACHERS.SURNAME AS SURNAME,
	GROUPS.NAME AS GROUP
FROM TEACHERS
CROSS JOIN GROUPS;

-- 2. Виведіть назви факультетів, фонд фінансування кафедр яких перевищує фонд фінансування факультету.
SELECT NAME
FROM FACULTIES
WHERE FINANCING < (
	SELECT SUM(FINANCING)
	FROM DEPARTMENTS
	WHERE DEPARTMENTS.FACULTYID = FACULTIES.ID
);

-- 3. Виведіть прізвища кураторів груп і назви груп, які вони курирують.
SELECT SURNAME, GROUPS.NAME
FROM GROUPSCURATORS
JOIN CURATORS ON GROUPSCURATORS.CURATORID = CURATORS.ID
JOIN GROUPS ON GROUPSCURATORS.GROUPID = GROUPS.ID;

-- 4. Виведіть імена та прізвища викладачів, які читають лекції у групі «P107».
SELECT TEACHERS.NAME, SURNAME --, GROUPS.NAME, LECTURES.DATE, LECTURES.LECTUREROOM, SUBJECTS.NAME
FROM TEACHERS
JOIN LECTURES ON TEACHERS.ID = LECTURES.TEACHERID
JOIN GROUPSLECTURES ON LECTURES.ID = GROUPSLECTURES.LECTUREID
JOIN GROUPS ON GROUPSLECTURES.GROUPID = GROUPS.ID
--JOIN SUBJECTS ON LECTURES.SUBJECTID = SUBJECTS.ID
WHERE GROUPS.NAME = 'P107';

-- 5. Виведіть прізвища викладачів і назви факультетів, на яких вони читають лекції.
SELECT TEACHERS.NAME, FACULTIES.NAME
FROM TEACHERS
JOIN LECTURES ON TEACHERS.ID = LECTURES.TEACHERID
JOIN GROUPSLECTURES ON LECTURES.ID = GROUPSLECTURES.LECTUREID
JOIN GROUPS ON GROUPSLECTURES.GROUPID = GROUPS.ID
JOIN DEPARTMENTS ON GROUPS.DEPARTMENTID = DEPARTMENTS.ID
JOIN FACULTIES ON DEPARTMENTS.FACULTYID = FACULTIES.ID;

-- 6. Виведіть назви кафедр і назви груп, які до них належать.
SELECT DEPARTMENTS.NAME, GROUPS.NAME
FROM DEPARTMENTS
JOIN GROUPS ON DEPARTMENTS.ID = GROUPS.DEPARTMENTID;

-- 7. Виведіть назви предметів, які викладає викладач «Samantha Adams».
SELECT SUBJECTS.NAME
FROM SUBJECTS
JOIN LECTURES ON SUBJECTS.ID = LECTURES.SUBJECTID
JOIN TEACHERS ON LECTURES.TEACHERID = TEACHERS.ID
WHERE TEACHERS.NAME = 'Samantha' AND TEACHERS.SURNAME = 'Adams';

-- 8. Виведіть назви кафедр, на яких викладається дисципліна «Database Theory».
SELECT DEPARTMENTS.NAME, GROUPS.NAME
FROM DEPARTMENTS
JOIN GROUPS ON DEPARTMENTS.ID = GROUPS.DEPARTMENTID
JOIN GROUPSLECTURES ON GROUPS.ID = GROUPSLECTURES.GROUPID
JOIN LECTURES ON GROUPSLECTURES.LECTUREID = LECTURES.ID
JOIN SUBJECTS ON LECTURES.SUBJECTID = SUBJECTS.ID
WHERE SUBJECTS.NAME = 'Database Theory';

-- 9. Виведіть назви груп, що належать до факультету «Computer Science».
SELECT GROUPS.NAME
FROM GROUPS
JOIN DEPARTMENTS ON DEPARTMENTS.ID = GROUPS.DEPARTMENTID
JOIN FACULTIES ON FACULTIES.ID = DEPARTMENTS.FACULTYID
WHERE LOWER(FACULTIES.NAME) LIKE LOWER('Faculty of Computer Science');

-- 10. Виведіть назви груп 5-го курсу, а також назви факультетів, до яких вони належать.
SELECT GROUPS.NAME, FACULTIES.NAME
FROM GROUPS
JOIN DEPARTMENTS ON DEPARTMENTS.ID = GROUPS.DEPARTMENTID
JOIN FACULTIES ON FACULTIES.ID = DEPARTMENTS.FACULTYID
WHERE GROUPS.YEAR = 5;

-- 11. Виведіть повні імена викладачів і лекції, які вони читають (назви предметів та груп). 
-- Зробіть відбір по тим лекціям, які проходять в аудиторії «B103».
SELECT 
	TEACHERS.NAME, 
	SURNAME, 
	SUBJECTS.NAME AS SUBJECT, 
	GROUPS.NAME AS GROUP
FROM TEACHERS
JOIN LECTURES ON TEACHERS.ID = LECTURES.TEACHERID
JOIN GROUPSLECTURES ON LECTURES.ID = GROUPSLECTURES.LECTUREID
JOIN GROUPS ON GROUPSLECTURES.GROUPID = GROUPS.ID
JOIN SUBJECTS ON LECTURES.SUBJECTID = SUBJECTS.ID
WHERE LECTURES.LECTUREROOM = 'B103';