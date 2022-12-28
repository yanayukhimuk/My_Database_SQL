CREATE PROCEDURE [dbo].[sp_AddNewPerson]
	@EmployeeName nvarchar NULL,
    @FirstName nvarchar (50) NULL,
    @LastName nvarchar (50) NULL,
    @CompanyName nvarchar (20) NOT NULL,
    @Position nvarchar (100) NULL, 
    @Street nvarchar (50) NOT NULL, 
    @City nvarchar (50) NULL,
    @State nvarchar (50) NULL, 
    @ZipCode nvarchar (50) NULL
AS
BEGIN
	SELECT [Id], [FirstName], [LastName]
    From dbo.Person
    Where FirstName = @FirstName AND LastName = @LastName;
    SELECT [EmployeeName], [Position]
    From dbo.Employee
    Where EmployeeName = @EmployeeName and Position = @Position;
    SELECT [Name]
    From dbo.Company
    Where Name = @CompanyName;
    SELECT [Street], [City], [State], [ZipCode]
    From dbo.Address
    Where Street = @Street AND City = @City AND State = @State AND ZipCode = @ZipCode;
END
