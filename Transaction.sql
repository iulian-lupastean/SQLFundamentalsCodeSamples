
BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO dbo.Employees (InternalIdentifier, FirstName, LastName, City, Country, BirthYear, NOTES)
			VALUES ('000130', 'George', 'Ionescu', 'Cluj-Napoca', 'Romania', 1998, NULL)
		INSERT INTO dbo.Employees (InternalIdentifier, FirstName, LastName, City, Country, BirthYear, NOTES)
			VALUES ('000130', 'Ioana', 'Sabau', 'Timisoara', 'Romania', 1995, NULL)
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION
END CATCH
