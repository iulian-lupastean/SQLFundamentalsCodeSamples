-- INNER JOIN FOR 1 TO MANY

SELECT E.FirstName,E.LastName,PN.PhoneNumber
FROM Employees AS E
INNER JOIN PhoneNumbers as PN
			ON E.ID=PN.PersonID
GROUP BY LastName,FirstName,PhoneNumber
