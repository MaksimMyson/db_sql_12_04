USE [db_sql_12_04]
GO
INSERT INTO Groups (Name, Rating, Year) VALUES ('Group1', 4, 3);
INSERT INTO Groups (Name, Rating, Year) VALUES ('Group2', 3, 2);
INSERT INTO Groups (Name, Rating, Year) VALUES ('Group3', 5, 4);

INSERT INTO Departments (Financing, Name) VALUES (15000, 'Department1');
INSERT INTO Departments (Financing, Name) VALUES (20000, 'Department2');
INSERT INTO Departments (Financing, Name) VALUES (30000, 'Department3');

INSERT INTO Faculties (Name) VALUES ('Faculty1');
INSERT INTO Faculties (Name) VALUES ('Faculty2');
INSERT INTO Faculties (Name) VALUES ('Faculty3');

INSERT INTO Teachers (EmploymentDate, Name, Premium, Rate, Surname) VALUES ('2000-05-15', 'Max', 100, 1500, 'Doe');
INSERT INTO Teachers (EmploymentDate, Name, Premium, Rate, Surname) VALUES ('2005-10-20', 'Jane', 200, 1200, 'Smith');
INSERT INTO Teachers (EmploymentDate, Name, Premium, Rate, Surname) VALUES ('2010-03-08', 'Lika', 300, 1800, 'Johnson');