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
	ProjectId INT NOT NULL FOREIGN KEY REFERENCES Projects(ID),
	EmployeeId INT NOT NULL FOREIGN KEY REFERENCES Employees(ID)
);

ALTER TABLE Employees 
ALTER COLUMN Country NVARCHAR(30);

ALTER TABLE Employees 
DROP COLUMN Country;

ALTER TABLE Employees
ADD Country NVARCHAR(45);

DROP TABLE Employees;


ALTER TABLE Employees
ADD CONSTRAINT Set_Df
DEFAULT 'Not Existing Notes' for Notes
