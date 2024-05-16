CREATE TABLE Departments (
    Id SERIAL PRIMARY KEY,
    Financing NUMERIC NOT NULL CHECK (Financing >= 0) DEFAULT 0,
    Name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Departments (Financing, Name)
VALUES 
    (10000, 'Department of Computer Science'),
    (15000, 'Department of Mathematics'),
    (12000, 'Department of Physics'),
    (8000, 'Department of Chemistry'),
    (9000, 'Department of Biology'),
    (11000, 'Department of History'),
    (7000, 'Department of Geography'),
    (13000, 'Department of Economics'),
    (14000, 'Department of Literature'),
    (9500, 'Department of Philosophy'),
    (10000, 'Department of Psychology'),
    (10500, 'Department of Sociology');

CREATE TABLE Faculties (
    Id SERIAL PRIMARY KEY,
    Dean VARCHAR(255) NOT NULL,
    Name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Faculties (Dean, Name)
VALUES 
    ('Dr. John Smith', 'Faculty of Computer Science'),
    ('Dr. Emily Johnson', 'Faculty of Mathematics'),
    ('Dr. Robert Brown', 'Faculty of Physics'),
    ('Dr. Michael Davis', 'Faculty of Chemistry'),
    ('Dr. Jennifer Miller', 'Faculty of Biology'),
    ('Dr. William Wilson', 'Faculty of History'),
    ('Dr. Linda Moore', 'Faculty of Geography'),
    ('Dr. Thomas Taylor', 'Faculty of Economics'),
    ('Dr. Patricia Anderson', 'Faculty of Literature'),
    ('Dr. Charles Thomas', 'Faculty of Philosophy'),
    ('Dr. Barbara Jackson', 'Faculty of Psychology'),
    ('Dr. Matthew White', 'Faculty of Sociology'),
    ('Dr. Susan Harris', 'Faculty of Political Science'),
    ('Dr. Mark Martin', 'Faculty of Law'),
    ('Dr. Sandra Thompson', 'Faculty of Medicine'),
    ('Dr. Paul Garcia', 'Faculty of Dentistry'),
    ('Dr. Sarah Martinez', 'Faculty of Nursing'),
    ('Dr. Steven Robinson', 'Faculty of Engineering'),
    ('Dr. Jessica Clark', 'Faculty of Architecture'),
    ('Dr. Daniel Rodriguez', 'Faculty of Business Administration'),
    ('Dr. Karen Lewis', 'Faculty of Education'),
    ('Dr. Nancy Lee', 'Faculty of Environmental Studies'),
    ('Dr. Kevin Walker', 'Faculty of Social Work'),
    ('Dr. Donna Hall', 'Faculty of Fine Arts');

CREATE TABLE Groups (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(10) NOT NULL UNIQUE,
    Rating INT NOT NULL CHECK (Rating BETWEEN 0 AND 5),
    Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5)
);

INSERT INTO Groups (Name, Rating, Year)
VALUES 
    ('Group01', 5, 1),
    ('Group02', 4, 1),
    ('Group03', 3, 1),
    ('Group04', 2, 1),
    ('Group05', 1, 1),
    ('Group06', 5, 2),
    ('Group07', 4, 2),
    ('Group08', 3, 2),
    ('Group09', 2, 2),
    ('Group10', 1, 2),
    ('Group11', 5, 3),
    ('Group12', 4, 3),
    ('Group13', 3, 3),
    ('Group14', 2, 3),
    ('Group15', 1, 3),
    ('Group16', 5, 4),
    ('Group17', 4, 4),
    ('Group18', 3, 4),
    ('Group19', 2, 4),
    ('Group20', 1, 4),
    ('Group21', 5, 5),
    ('Group22', 4, 5),
    ('Group23', 3, 5),
    ('Group24', 2, 5),
    ('Group25', 1, 5),
    ('Group26', 3, 1),
    ('Group27', 2, 2),
    ('Group28', 4, 3),
    ('Group29', 5, 4),
    ('Group30', 2, 1),
    ('Group31', 3, 2),
    ('Group32', 4, 3);

CREATE TABLE Teachers (
    Id SERIAL PRIMARY KEY,
    EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
    IsAssistant BOOLEAN  NOT NULL DEFAULT false,
    IsProfessor BOOLEAN  NOT NULL DEFAULT false,
    Name VARCHAR NOT NULL,
    Position VARCHAR NOT NULL,
    Premium NUMERIC NOT NULL CHECK (Premium >= 0) DEFAULT 0,
    Salary NUMERIC NOT NULL CHECK (Salary > 0),
    Surname VARCHAR NOT NULL
);

INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname)
VALUES 
    ('1995-05-23', FALSE, TRUE, 'John', 'Professor', 200.00, 3000.00, 'Smith'),
    ('2001-08-14', FALSE, FALSE, 'Emily', 'Senior Lecturer', 150.00, 2500.00, 'Johnson'),
    ('1998-11-02', TRUE, FALSE, 'Michael', 'Assistant Professor', 100.00, 2200.00, 'Williams'),
    ('2005-03-19', FALSE, TRUE, 'Sarah', 'Professor', 250.00, 3200.00, 'Brown'),
    ('2010-07-30', FALSE, FALSE, 'David', 'Lecturer', 80.00, 2000.00, 'Jones'),
    ('2012-12-01', TRUE, FALSE, 'Laura', 'Assistant Professor', 120.00, 2100.00, 'Garcia'),
    ('2003-02-14', FALSE, FALSE, 'Robert', 'Senior Lecturer', 160.00, 2700.00, 'Miller'),
    ('2015-09-15', TRUE, FALSE, 'Jessica', 'Assistant Lecturer', 50.00, 1800.00, 'Martinez'),
    ('2007-06-22', FALSE, TRUE, 'Daniel', 'Professor', 300.00, 3400.00, 'Rodriguez'),
    ('1996-10-11', FALSE, FALSE, 'James', 'Lecturer', 90.00, 2100.00, 'Martinez'),
    ('2002-04-29', TRUE, FALSE, 'Emma', 'Assistant Lecturer', 70.00, 1900.00, 'Hernandez'),
    ('2013-01-18', FALSE, FALSE, 'Thomas', 'Senior Lecturer', 200.00, 2800.00, 'Lopez'),
    ('2004-05-12', FALSE, TRUE, 'Sophia', 'Professor', 240.00, 3100.00, 'Gonzalez'),
    ('1999-07-05', FALSE, FALSE, 'William', 'Lecturer', 85.00, 2050.00, 'Wilson'),
    ('2011-03-07', TRUE, FALSE, 'Olivia', 'Assistant Professor', 130.00, 2300.00, 'Anderson'),
    ('2008-09-25', FALSE, FALSE, 'Anthony', 'Senior Lecturer', 170.00, 2600.00, 'Thomas'),
    ('2014-11-17', FALSE, TRUE, 'Andrew', 'Professor', 280.00, 3300.00, 'Taylor'),
    ('2000-02-06', FALSE, FALSE, 'Mia', 'Lecturer', 75.00, 1950.00, 'Moore'),
    ('1997-08-13', TRUE, FALSE, 'Joshua', 'Assistant Lecturer', 60.00, 1850.00, 'Jackson'),
    ('2016-05-04', FALSE, TRUE, 'Ethan', 'Professor', 220.00, 3050.00, 'Lee'),
    ('1993-04-10', FALSE, FALSE, 'Abigail', 'Lecturer', 95.00, 2150.00, 'Perez'),
    ('2012-08-21', TRUE, FALSE, 'Matthew', 'Assistant Professor', 140.00, 2400.00, 'Young'),
    ('2006-03-29', FALSE, TRUE, 'Ava', 'Professor', 260.00, 3250.00, 'Hill'),
    ('1994-11-03', FALSE, FALSE, 'Lucas', 'Senior Lecturer', 180.00, 2750.00, 'King'),
    ('2010-06-28', TRUE, FALSE, 'Isabella', 'Assistant Lecturer', 55.00, 1750.00, 'Scott'),
    ('2009-10-16', FALSE, TRUE, 'Benjamin', 'Professor', 290.00, 3350.00, 'Green'),
    ('2001-01-27', FALSE, FALSE, 'Charlotte', 'Lecturer', 65.00, 1850.00, 'Adams'),
    ('2013-05-15', TRUE, FALSE, 'Alexander', 'Assistant Professor', 110.00, 2200.00, 'Taylor');
