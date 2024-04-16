USE [db_sql_12_04]
GO 
-- 1. Display the table of departments, but arrange its fields in reverse order
SELECT Name, Financing, Id FROM Departments;

-- 2. Display group names and their ratings using as display field names "Group Name" and "Group Rating" respectively
SELECT Name AS "Group Name", Rating AS "Group Rating" FROM Groups;

-- 3. Display for teachers their name, percentage rate on in relation to surcharge and interest rate in relation to salary (amount of rate and allowance)
SELECT Name, (Premium / Rate) * 100 AS "Premium Percentage", Rate FROM Teachers;

-- 4. Display the table of faculties in the form of one field in the following format: "The dean of faculty [faculty] is [dean].."
SELECT CONCAT('The dean of faculty ', Name, ' is [dean]..') AS Faculty_Info FROM Faculties;

-- 5. Display the names of teachers who are professors and rate which exceeds 1050
SELECT Name FROM Teachers WHERE Rate > 1050;

-- 6. Display the names of departments whose funding fund is smaller for 11,000 or more than 25,000
SELECT Name FROM Departments WHERE Financing < 11000 OR Financing > 25000;

-- 7. Display the names of the faculties, except the faculty "Computer Science”
SELECT Name FROM Faculties WHERE Name != 'Computer Science';

-- 8. Withdraw the names and positions of teachers who are not professors
-- Assuming professors are teachers who are not assistants
SELECT Name FROM Teachers WHERE Id NOT IN (SELECT Id FROM Teachers WHERE Position = 'Assistant');

-- 9. Display surnames, positions, rates, and allowances of assistants, which have an increase in the range from 160 to 550
SELECT Surname, 'Assistant' AS Position, Rate, Premium FROM Teachers WHERE Position = 'Assistant' AND Premium BETWEEN 160 AND 550;

-- 10. Display the names and rates of assistants
SELECT Name, Rate FROM Teachers WHERE Position = 'Assistant';

-- 11. Display the names and positions of teachers who were accepted to work until 01.01.2000
SELECT Name, Position FROM Teachers WHERE EmploymentDate <= '2000-01-01';

-- 12. Display the names of the departments, which in alphabetical order are placed in the department "Software Development." The output field must be named "Name of Department."
SELECT Name AS "Name of Department" FROM Departments WHERE Name LIKE 'Software Development%' ORDER BY Name;

-- 13. Display the names of assistants who have a salary (amount rates and allowances) no more than 1200
SELECT Name FROM Teachers WHERE Position = 'Assistant' AND (Rate + Premium) <= 1200;

-- 14. Display the names of the 5th year groups, which have a rating in the range from 2 to 4
SELECT Name FROM Groups WHERE Year = 5 AND Rating BETWEEN 2 AND 4;

-- 15. Display the names of assistants with a rate of less than 550 or an increase of less than 200
SELECT Name FROM Teachers WHERE Position = 'Assistant' AND (Rate < 550 OR Premium < 200);