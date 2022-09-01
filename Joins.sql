-- INNER JOIN FOR 1 TO MANY

SELECT P.FirstName,P.LastName,PN.PhoneNumber
FROM Persons AS P
INNER JOIN PhoneNumbers as PN
			ON P.ID=PN.PersonID
GROUP BY LastName,FirstName,PhoneNumber


--Left and right join for many to many
SELECT e.FirstName, e.LastName, e.Country, p.ProjectName
FROM dbo.Employees as e
	INNER JOIN dbo.ProjectEmployees as pe ON e.ID = pe.EmployeeId
	INNER JOIN dbo.Projects as p ON p.ID = pe.ProjectId
ORDER BY p.ProjectName
