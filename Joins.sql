-- INNER JOIN FOR 1 TO MANY

SELECT E.FirstName,E.LastName,PN.PhoneNumber
FROM Employees AS E
INNER JOIN PhoneNumbers as PN
			ON E.ID=PN.PersonID
GROUP BY LastName,FirstName,PhoneNumber


--Left and right join for many to many
SELECT e.FirstName, e.LastName, e.Country, p.ProjectName
FROM dbo.Employees as e
	LEFT JOIN dbo.ProjectEmployees as pe ON e.ID = pe.EmployeeId
	RIGHT JOIN dbo.Projects as p ON p.ID = pe.ProjectId
ORDER BY p.ProjectName
