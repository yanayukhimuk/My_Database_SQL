-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertEmployeeInfo] 
	-- Add the parameters for the stored procedure here
	@EmployeeName varchar(50) = NULL, 
	@FirstName varchar(50),
	@LastName varchar(50), 
	@CompanyName varchar(20),
    @Position varchar(30) = NULL,
    @Street varchar(50),
    @City varchar(20),
    @State varchar(50) = NULL,
    @ZipCode varchar(50) = NULL
AS
BEGIN
    SET NOCOUNT ON

	INSERT INTO dbo.Address
	(Street, City, State, ZipCode)
	VALUES
	(@Street, @City, @State, @Zipcode)

	DECLARE @AddressId int
	SELECT @AddressId = SCOPE_IDENTITY()

	INSERT INTO dbo.Employee
	(AddressID)
	VALUES (@AddressId)
	
	IF @CompanyName > 20
	BEGIN
	SELECT @CompanyName = SUBSTRING(@CompanyName, 0, 19)
	END 

	INSERT INTO dbo.Company
	(Name, AddressId)
	VALUES (@CompanyName, @AddressId)

	DECLARE @CompanyId int
	SELECT @CompanyId = SCOPE_IDENTITY()

	INSERT INTO dbo.Employee
	(CompanyID)
	VALUES (@CompanyId)

	IF @EmployeeName IS NULL
	BEGIN
	INSERT INTO dbo.Person
	(FirstName, LastName)
	VALUES (@FirstName, @LastName)

	DECLARE @PersonId int
	SELECT @PersonId = SCOPE_IDENTITY()

	INSERT INTO dbo.Employee
	(PersonID)
	VALUES (@PersonId)
	END

	ELSE IF @EmployeeName IS NOT NULL
	BEGIN
	INSERT INTO dbo.Employee
	(EmployeeName)
	VALUES (@EmployeeName)

	DECLARE @PName varchar(50) 
	SELECT @PName = SUBSTRING(@EmployeeName, 0, CHARINDEX(' ', @EmployeeName))
	DECLARE @PSurname varchar(50) 
	SELECT @PSurname= SUBSTRING(@EmployeeName, CHARINDEX(' ', @EmployeeName) +1, DATALENGTH(@EmployeeName) - CHARINDEX(' ', @EmployeeName) +1)

	INSERT INTO dbo.Person
	(FirstName, LastName)
	VALUES (@PName, @PSurname)

	END 

END