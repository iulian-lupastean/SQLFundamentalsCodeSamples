SELECT  FirstName as Prenume, LastName as Nume, City,Country
FROM Employees as Angajati
Group By Country,City,LastName,FirstName
Order By Country DESC

SELECT SUM(Revenue) 
from Projects

--Numarul de angajati care au un anumit an al ansteri, Cuprins intr-un interval

SELECT COUNT(ID) as 'Numar de Angajati' , BirthYear as 'Anul Nasteri'
FROM Employees
Where Country Like 'Romania'
Group By BirthYear
Having BirthYear >= 1989 AND BirthYear <= 1999
ORDER BY Count(ID) DESC

SELECT 2022 - AVG(BirthYear) as VarstaMedie
From Employees

--Angajati care nu au fost alocati pe un proiect
SELECT e.FirstName, e.LastName, e.Country
FROM Employees as e
WHERE NOT EXISTS(
	SELECT NULL
	FROM ProjectEmployees as pe
	WHERE pe.EmployeeId = e.ID
)
