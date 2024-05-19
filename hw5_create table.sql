-- CREATE TABLE Faculties (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(100) NOT NULL CHECK (Name != '') UNIQUE 
-- );

-- INSERT INTO Faculties (Name)
-- VALUES 
--     ('Faculty of Computer Science'),
--     ('Faculty of Mathematics'),
--     ('Faculty of Physics'),
--     ('Faculty of Chemistry'),
--     ('Faculty of Biology'),
--     ('Faculty of History'),
--     ('Faculty of Geography'),
--     ('Faculty of Economics'),
--     ('Faculty of Literature'),
--     ('Faculty of Philosophy'),
--     ('Faculty of Psychology'),
--     ('Faculty of Sociology'),
--     ('Faculty of Political Science'),
--     ('Faculty of Law'),
--     ('Faculty of Medicine'),
--     ('Faculty of Dentistry'),
--     ('Faculty of Nursing'),
--     ('Faculty of Engineering'),
--     ('Faculty of Architecture'),
--     ('Faculty of Business Administration'),
--     ('Faculty of Education'),
--     ('Faculty of Environmental Studies'),
--     ('Faculty of Social Work'),
--     ('Faculty of Fine Arts');


-- CREATE TABLE Departments (
-- 	Id SERIAL PRIMARY KEY,
-- 	Building INT NOT NULL CHECK (Building BETWEEN 1 AND 5),
-- 	Financing NUMERIC NOT NULL CHECK (Financing >= 0) DEFAULT 0,
-- 	Name VARCHAR(100) NOT NULL UNIQUE,
-- 	FacultyId INT NOT NULL,
-- 	FOREIGN KEY (FacultyId) REFERENCES Faculties(Id)
-- );

-- INSERT INTO Departments (Building, Financing, Name, FacultyId)
-- VALUES 
--     (1, 10000, 'Department of Computer Science', 1),
--     (1, 15000, 'Department of Mathematics', 2),
--     (1, 12000, 'Department of Physics', 3),
--     (2, 8000, 'Department of Chemistry', 4),
--     (2, 9000, 'Department of Biology', 5),
--     (3, 11000, 'Department of History', 6),
--     (3, 7000, 'Department of Geography', 7),
--     (3, 13000, 'Department of Economics', 8),
--     (3, 14000, 'Department of Literature',9),
--     (3, 9500, 'Department of Philosophy',9),
--     (4, 10000, 'Department of Psychology', 11),
--     (4, 10500, 'Department of Sociology', 11);



-- CREATE TABLE Groups (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(10) NOT NULL UNIQUE,
--     Rating INT NOT NULL CHECK (Rating BETWEEN 0 AND 5),
--     Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5),
-- 	DepartmentId INT NOT NULL,
-- 	FOREIGN KEY (DepartmentId) REFERENCES Groups(Id)
-- );

-- INSERT INTO Groups (DepartmentId, Name, Rating, Year)
-- VALUES 
--     (1, 'Group01', 5, 1),
--     (2, 'Group02', 4, 1),
--     (3, 'Group03', 3, 1),
--     (4, 'Group04', 2, 1),
--     (5, 'Group05', 1, 1),
--     (1, 'Group06', 5, 2),
--     (6, 'Group07', 4, 2),
--     (7, 'Group08', 3, 2),
--     (8, 'Group09', 2, 2),
--     (9, 'Group10', 1, 2),
--     (1, 'Group11', 5, 3),
--     (2,'Group12', 4, 3),
--     (10,'Group13', 3, 3),
--     (11,'Group14', 2, 3),
--     (4,'Group15', 1, 3),
--     (1, 'Group16', 5, 4),
--     (3, 'Group17', 4, 4),
--     (5, 'Group18', 3, 4),
--     (12, 'Group19', 2, 4),
--     (6, 'Group20', 1, 4),
--     (2, 'Group21', 5, 5),
--     (4, 'Group22', 4, 5),
--     (6, 'Group23', 3, 5),
--     (7, 'Group24', 2, 5),
--     (1, 'Group25', 1, 5),
--     (8, 'Group26', 3, 1),
--     (9, 'Group27', 2, 2),
--     (9, 'Group28', 4, 3),
--     (10, 'Group29', 5, 4),
--     (12, 'Group30', 2, 1),
--     (11, 'Group31', 3, 2),
--     (10, 'Group32', 4, 3);

-- CREATE TABLE Curators (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR NOT NULL,
-- 	Surname VARCHAR NOT NULL);

-- INSERT INTO Curators (Name, Surname)
-- VALUES 
--     ('John', 'Doe'),
--     ('Jane', 'Smith'),
--     ('Emily', 'Johnson'),
--     ('Michael', 'Williams'),
--     ('Sarah', 'Brown'),
--     ('David', 'Jones'),
--     ('Laura', 'Garcia'),
--     ('Robert', 'Martinez'),
--     ('Maria', 'Rodriguez'),
--     ('James', 'Davis');

-- CREATE TABLE GroupsCurators (
-- 	Id SERIAL PRIMARY KEY,
-- 	CuratorId INT NOT NULL,
-- 	GroupId INT NOT NULL,
-- 	FOREIGN KEY (CuratorId) REFERENCES Curators(Id),
-- 	FOREIGN KEY (GroupId) REFERENCES Groups(Id)
	
-- );

-- INSERT INTO GroupsCurators (CuratorId, GroupId)
-- VALUES 
--     ('John', 'Doe'),
--     ('Jane', 'Smith'),
--     ('Emily', 'Johnson'),
--     ('Michael', 'Williams'),
--     ('Sarah', 'Brown'),
--     ('David', 'Jones'),
--     ('Laura', 'Garcia'),
--     ('Robert', 'Martinez'),
--     ('Maria', 'Rodriguez'),
--     ('James', 'Davis');

-- INSERT INTO GroupsCurators (CuratorId, GroupId)
-- VALUES
--     (1, 1),
--     (2, 2),
--     (3, 3),
--     (4, 4),
--     (5, 5),
--     (6, 6),
--     (7, 7),
--     (8, 8),
--     (9, 9),
--     (10, 10),
--     (1, 11),
--     (2, 12),
--     (3, 13),
--     (4, 14),
--     (5, 15),
--     (6, 16),
--     (7, 17),
--     (8, 18),
--     (9, 19),
--     (10, 20),
--     (1, 21),
--     (2, 22),
--     (3, 23),
--     (4, 24),
--     (5, 25),
--     (6, 26),
--     (7, 27),
--     (8, 28),
--     (9, 29),
--     (10, 30),
--     (1, 31),
--     (2, 32);

-- CREATE TABLE Students (
-- 	Id SERIAL PRIMARY KEY,
-- 	Name VARCHAR NOT NULL,
-- 	Surname VARCHAR NOT NULL,
-- 	Rating INT NOT NULL CHECK (Rating BETWEEN 0 AND 5)
-- );

-- INSERT INTO Students (Name, Surname, Rating)
-- VALUES 
--     ('John', 'Doe', 4),
--     ('Jane', 'Smith', 5),
--     ('Emily', 'Johnson', 3),
--     ('Michael', 'Williams', 2),
--     ('Sarah', 'Brown', 4),
--     ('David', 'Jones', 5),
--     ('Laura', 'Garcia', 3),
--     ('Robert', 'Martinez', 2),
--     ('Maria', 'Rodriguez', 1),
--     ('James', 'Davis', 4),
--     ('Linda', 'Miller', 3),
--     ('William', 'Wilson', 5),
--     ('Barbara', 'Moore', 4),
--     ('Richard', 'Taylor', 2),
--     ('Susan', 'Anderson', 1),
--     ('Joseph', 'Thomas', 3),
--     ('Patricia', 'Jackson', 4),
--     ('Charles', 'White', 5),
--     ('Christopher', 'Harris', 2),
--     ('Daniel', 'Clark', 1);

-- INSERT INTO Students (Name, Surname, Rating)
-- VALUES 
--     ('Emma', 'Johnson', 4),
--     ('Noah', 'Williams', 5),
--     ('Olivia', 'Brown', 3),
--     ('Liam', 'Jones', 2),
--     ('Ava', 'Garcia', 4),
--     ('William', 'Martinez', 5),
--     ('Isabella', 'Rodriguez', 3),
--     ('James', 'Davis', 2),
--     ('Sophia', 'Miller', 1),
--     ('Benjamin', 'Wilson', 4),
--     ('Mia', 'Moore', 3),
--     ('Ethan', 'Taylor', 5),
--     ('Charlotte', 'Anderson', 4),
--     ('Alexander', 'Thomas', 2),
--     ('Amelia', 'Jackson', 1),
--     ('Michael', 'White', 3),
--     ('Harper', 'Harris', 4),
--     ('Daniel', 'Clark', 5),
--     ('Evelyn', 'Lewis', 2),
--     ('Matthew', 'Lee', 1),
--     ('Avery', 'Walker', 4),
--     ('David', 'Hall', 3),
--     ('Sofia', 'Allen', 5),
--     ('Jackson', 'Young', 4),
--     ('Madison', 'Hill', 3),
--     ('Liam', 'Wright', 2),
--     ('Abigail', 'Scott', 1),
--     ('Jayden', 'Martin', 4),
--     ('Emily', 'King', 5),
--     ('Elijah', 'Wright', 4),
--     ('Aria', 'Gonzalez', 3),
--     ('Logan', 'Perez', 2),
--     ('Mia', 'Hernandez', 1),
--     ('Oliver', 'Davis', 4),
--     ('Scarlett', 'Nelson', 5),
--     ('Lucas', 'Carter', 4),
--     ('Zoe', 'Mitchell', 3),
--     ('Carter', 'Parker', 2),
--     ('Chloe', 'Perez', 1);


-- CREATE TABLE Subjects (
-- 	Id SERIAL PRIMARY KEY,
-- 	Name VARCHAR(100) NOT NULL
-- );

-- INSERT INTO Subjects (Name)
-- VALUES 
--     ('Mathematics'),
--     ('Physics'),
--     ('Chemistry'),
--     ('Biology'),
--     ('History'),
--     ('Geography'),
--     ('Economics'),
--     ('Literature'),
--     ('Philosophy'),
--     ('Psychology'),
--     ('Sociology'),
--     ('Computer Science'),
--     ('Anthropology'),
--     ('Archeology'),
--     ('Art History'),
--     ('Astronomy'),
--     ('Astrophysics'),
--     ('Botany'),
--     ('Criminal Justice'),
--     ('Drama'),
--     ('Ecology'),
--     ('Engineering'),
--     ('English'),
--     ('Ethnic Studies'),
--     ('Film Studies'),
--     ('Gender Studies'),
--     ('Health Science'),
--     ('Journalism'),
--     ('Law'),
--     ('Linguistics'),
--     ('Marketing'),
--     ('Music'),
--     ('Nutrition'),
--     ('Political Science'),
--     ('Religious Studies'),
--     ('Sociology'),
--     ('Statistics'),
--     ('Theater'),
--     ('Urban Studies'),
--     ('Visual Arts'),
--     ('Zoology'),
--     ('Foreign Language'),
--     ('Physical Education'),
--     ('Environmental Science'),
--     ('Business Administration'),
--     ('Public Administration'),
--     ('Humanities'),
--     ('Management');


-- CREATE TABLE Teachers (
--     Id SERIAL PRIMARY KEY,
--     IsProfessor BOOLEAN  NOT NULL DEFAULT false,
--     Name VARCHAR NOT NULL,
--     Surname VARCHAR NOT NULL,
--     Salary NUMERIC NOT NULL CHECK (Salary > 0)
    
-- );

-- INSERT INTO Teachers (IsProfessor, Name, Surname, Salary)
-- VALUES 
--     (false, 'John', 'Doe', 50000),
--     (false, 'Jane', 'Smith', 48000),
--     (true, 'Michael', 'Johnson', 75000),
--     (false, 'Emily', 'Williams', 52000),
--     (false, 'Sarah', 'Brown', 49000),
--     (true, 'David', 'Jones', 72000),
--     (false, 'Laura', 'Garcia', 51000),
--     (false, 'Robert', 'Martinez', 49000),
--     (true, 'Maria', 'Rodriguez', 73000),
--     (false, 'James', 'Davis', 50000),
--     (false, 'Linda', 'Miller', 49000),
--     (true, 'William', 'Wilson', 74000),
--     (false, 'Barbara', 'Moore', 50000),
--     (false, 'Richard', 'Taylor', 48000),
--     (true, 'Susan', 'Anderson', 71000),
--     (false, 'Joseph', 'Thomas', 51000),
--     (false, 'Patricia', 'Jackson', 50000),
--     (true, 'Charles', 'White', 72000),
--     (false, 'Christopher', 'Harris', 53000),
--     (false, 'Daniel', 'Clark', 50000),
--     (true, 'Amanda', 'Lewis', 70000),
--     (false, 'Karen', 'Lee', 54000),
--     (false, 'Steven', 'Walker', 51000),
--     (true, 'Deborah', 'Hall', 71000),
--     (false, 'Dorothy', 'Allen', 55000),
--     (false, 'Matthew', 'Young', 52000),
--     (true, 'Nancy', 'Hill', 73000),
--     (false, 'Mark', 'Wright', 56000),
--     (false, 'Lisa', 'Scott', 53000);

-- CREATE TABLE Lectures (
--     Id SERIAL PRIMARY KEY,
--     Date DATE NOT NULL CHECK (Date <= CURRENT_DATE),
--     SubjectId INT NOT NULL,
--     TeacherId INT NOT NULL,
--     FOREIGN KEY (SubjectId) REFERENCES Subjects(Id),
--     FOREIGN KEY (TeacherId) REFERENCES Teachers(Id)
-- );

-- INSERT INTO Lectures (Date, SubjectId, TeacherId)
-- SELECT 
--     CURRENT_DATE - (random() * 30)::INT,
--     (random() * 48)::INT + 1,
--     (random() * 29)::INT + 1 
-- FROM generate_series(1, 50);

-- CREATE TABLE GroupsLectures(
-- 	Id SERIAL PRIMARY KEY,
-- 	GroupId INT NOT NULL,
-- 	LectureId INT NOT NULL,
-- 	FOREIGN KEY (GroupId) REFERENCES GROUPS(ID),
-- 	FOREIGN KEY (LectureId) REFERENCES LECTURES(ID)
-- );

DELETE FROM GroupsLectures1;
INSERT INTO GroupsLectures1 (GroupId, LectureId)
SELECT
    G.Id AS GroupId,
    L.Id AS LectureId
FROM
    Groups G
    CROSS JOIN LATERAL (
        SELECT Id FROM Lectures
        ORDER BY RANDOM()
        LIMIT 3
    ) L;


-- CREATE TABLE GroupsStudents(
-- 	Id SERIAL PRIMARY KEY,
-- 	GroupId INT NOT NULL,
-- 	FOREIGN KEY (GroupId) REFERENCES GROUPS(ID),
-- 	StudentId INT NOT NULL,
-- 	FOREIGN KEY (StudentId) REFERENCES STUDENTS(ID)
-- );


