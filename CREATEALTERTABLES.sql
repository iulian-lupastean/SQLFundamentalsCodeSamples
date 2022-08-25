CREATE TABLE Employees(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	InternalIdentifier NVARCHAR(12) NOT NULL UNIQUE,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	City NVARCHAR(25) NOT NULL,
	Country NVARCHAR(45) NOT NULL,
	BirthYear INT NOT NULL CHECK (BirthYear >= 1960 AND BirthYear <= 2004),
	Notes NVARCHAR(500) NULL,	
);

CREATE TABLE Projects(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ProjectName NVARCHAR(40) NOT NULL,
	ProjectDescription NVARCHAR(500) NULL,
	CustomerName NVARCHAR(50) NOT NULL,
	Revenue MONEY NOT NULL
);

CREATE TABLE ProjectEmployees (
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ProjectId INT NOT NULL FOREIGN KEY REFERENCES Projects(ID) ON DELETE CASCADE,
	EmployeeId INT NOT NULL FOREIGN KEY REFERENCES Employees(ID)
);

ALTER TABLE Employees 
ALTER COLUMN Country NVARCHAR(30);

ALTER TABLE Employees
ADD CONSTRAINT Set_Df
DEFAULT 'Not Existing Notes' for Notes

ALTER TABLE Employees
DROP COLUMN Notes

ALTER TABLE Employees
DROP CONSTRAINT Add_Default

ALTER TABLE Employees
ADD Country NVARCHAR(45);





INSERT INTO dbo.Employees (InternalIdentifier, FirstName, LastName, City, Country, BirthYear)
VALUES
('000001', 'Dan', 'Patrascu-Baba', 'Timisoara', 'Romania', 1984)

DROP TABLE Employees;

