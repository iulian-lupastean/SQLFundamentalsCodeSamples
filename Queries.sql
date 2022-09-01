SELECT  FirstName as Prenume, LastName as Nume, City,Country
FROM Employees as Angajati
Group By Country,City,LastName,FirstName
Order By Country DESC

SELECT SUM(Revenue) 
from Projects

--Numarul de angajati care au un anumit an al ansteri, Cuprins intr-un interval

SELECT COUNT(ID) as 'Nr de angajati', 2022-BirthYear as 'Varsta'
FROM Employees as E
WHERE Country Like 'Romania'
Group By 2022-BirthYear
ORDER BY COUNT(ID) DESC,Varsta DESC

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
