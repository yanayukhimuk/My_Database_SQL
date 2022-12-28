CREATE VIEW [dbo].[EmployeeInfo]
	AS 
	SELECT e.[Id] as EmployeeId, [e].[Id],
	e.[EmployeeName] as EmployeeFullName, [p].[FirstName], [p].[LastName],
	e.[AddressID] as EmployeeFullAddress, [a].[City], [a].[Street], [a].[ZipCode],
	e.[CompanyID] as EmployeeCompanyInfo, [c].[Name]
	FROM dbo.Employee e
	LEFT JOIN dbo.Address a ON e.AddressID = a.Id
	LEFT JOIN dbo.Company c ON e.CompanyID = c.Id
	RIGHT JOIN dbo.Person p ON e.PersonID = p.Id