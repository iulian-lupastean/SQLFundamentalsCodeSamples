SELECT  FirstName as Prenume, LastName as Nume, City,Country
FROM Employees as Angajati
Group By Country,City,LastName,FirstName
Order By Country DESC



SELECT P.FirstName,P.LastName,PN.PersonId,PN.PhoneNumber 
FROM Persons AS P,PhoneNumbers as PN


SELECT SUM(Revenue) 
from Projects

SELECT 2022 - AVG(BirthYear) as VarstaMedie
From Employees

--Average age of our employees
Select AVG(2022-BirthYear) from Employees

--Number of employees from each country that has the age bigger than 25 but (only if there are more than 3 employyes)
SELECT COUNT(ID) as 'Nr. of Employees',Country
From Employees
WHERE 2022 - BirthYear > 25
Group By Country
Having COUNT(ID) > 3



--Numarul de angajati din romania, care au anumita varsta

SELECT COUNT(ID) as 'Nr de angajati', 2022-BirthYear as 'Varsta'
FROM Employees as E
WHERE Country Like 'Romania'
Group By 2022-BirthYear
ORDER BY COUNT(ID) DESC,Varsta DESC


