-- ALTER TABLE Doctors
-- ADD Premium numeric NOT NULL DEFAULT 0;

-- CREATE TABLE Specializations (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(100) NOT NULL UNIQUE
-- );

-- INSERT INTO Specializations (Name)
-- VALUES 
--     ('Cardiology'),
--     ('Neurology'),
--     ('Oncology'),
--     ('Pediatrics'),
--     ('Orthopedics'),
--     ('Dermatology');

-- CREATE TABLE Sponsors (
--     Id SERIAL PRIMARY KEY,
--     Name VARCHAR(100) NOT NULL UNIQUE
-- );

-- INSERT INTO Sponsors (Name)
-- VALUES 
--     ('Company A'),
--     ('Company B'),
--     ('Company C'),
--     ('Organization X'),
--     ('Foundation Y');

-- CREATE TABLE DoctorsSpecializations (
--     Id SERIAL PRIMARY KEY,
--     DoctorId INT NOT NULL,
--     SpecializationId INT NOT NULL,
--     FOREIGN KEY (DoctorId) REFERENCES Doctors(Id),
--     FOREIGN KEY (SpecializationId) REFERENCES Specializations(Id)
-- );

-- INSERT INTO DoctorsSpecializations (DoctorId, SpecializationId)
-- VALUES 
--   (1, 1),
--   (2, 2),
--   (3, 3),
--   (4, 4),
--   (5, 5),
--   (6, 6),
--   (7, 1),
--   (8, 2),
--   (9, 3),
--   (10, 4),
--   (11, 5),
--   (12, 6),
--   (13, 1),
--   (14, 2),
--   (15, 3),
--   (16, 4),
--   (17, 5),
--   (18, 6),
--   (19, 1),
--   (20, 2),
--   (21, 3),
--   (22, 4),
--   (23, 5),
--   (24, 6),
--   (25, 1),
--   (26, 2),
--   (27, 3),
--   (28, 4);

-- CREATE TABLE Vacations (
--     Id SERIAL PRIMARY KEY,
--     EndDate DATE NOT NULL CHECK (EndDate > StartDate),
--     StartDate DATE NOT NULL,
--     DoctorId INT NOT NULL,
--     FOREIGN KEY (DoctorId) REFERENCES Doctors(Id)
-- );

-- INSERT INTO Vacations (StartDate, EndDate, DoctorId)
-- VALUES
--     ('2024-06-01', '2024-06-10', 1),
--     ('2024-07-15', '2024-07-25', 3),
--     ('2024-08-05', '2024-08-15', 5),
--     ('2024-09-20', '2024-09-30', 7),
--     ('2024-10-10', '2024-10-20', 9),
--     ('2024-11-25', '2024-12-05', 11),
--     ('2024-12-20', '2025-01-05', 13);

-- CREATE TABLE Donations (
--     Id SERIAL PRIMARY KEY,
--     Amount NUMERIC NOT NULL CHECK (Amount > 0),
--     Date DATE NOT NULL DEFAULT CURRENT_DATE,
--     DepartmentId INT NOT NULL,
--     SponsorId INT NOT NULL,
--     FOREIGN KEY (DepartmentId) REFERENCES Departments(Id),
--     FOREIGN KEY (SponsorId) REFERENCES Sponsors(Id)
-- );

-- INSERT INTO Donations (Amount, Date, DepartmentId, SponsorId)
-- VALUES 
--     (5000, '2024-05-16', 17, 1),
--     (8000, '2024-05-17', 18, 2),
--     (3000, '2024-05-18', 19, 3),
--     (7000, '2024-05-19', 20, 4),
--     (6000, '2024-05-20', 21, 5),
--     (4000, '2024-05-21', 22, 1),
--     (9000, '2024-05-22', 23, 2),
--     (5500, '2024-05-23', 18, 3),
--     (7200, '2024-05-24', 24, 4),
--     (8500, '2024-05-25', 22, 5);

-- ALTER TABLE Wards
-- ADD COLUMN DepartmentId INTEGER REFERENCES departments(Id);

-- ALTER TABLE Wards
-- ALTER COLUMN DepartmentId SET NOT NULL; 

-- select * from departments;
-- select * from doctors;
-- select * from sponsors;
-- select * from DoctorsSpecializations;
-- select * from Vacations;
-- select * from Donations;
-- select * from Wards;

