CREATE VIEW [dbo].[EmployeeInfo]
	AS 
	SELECT e.[Id] as EmployeeId, [e].[Id],
	e.[EmployeeName] as EmployeeFullName, [e].[EmployeeName],
	e.[AddressID] as EmployeeFullAddress, [e].[AddressID]
	FROM dbo.Employee e