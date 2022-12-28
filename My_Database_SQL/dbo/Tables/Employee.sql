CREATE TABLE [dbo].[Employee] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [AddressID]    INT            NOT NULL,
    [PersonID]     INT            NOT NULL,
    [CompanyID]    INT            NOT NULL,
    [Position]     NVARCHAR (30)  NULL,
    [EmployeeName] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([AddressID]) REFERENCES [dbo].[Address] ([Id]),
    FOREIGN KEY ([CompanyID]) REFERENCES [dbo].[Company] ([Id]),
    FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Person] ([Id])
);



