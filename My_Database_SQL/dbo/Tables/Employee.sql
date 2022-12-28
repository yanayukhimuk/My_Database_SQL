CREATE TABLE [dbo].[Employee] (
    [Id]           INT            NOT NULL,
    [AddressID]    INT            NOT NULL,
    [PersonID]     INT            NOT NULL,
    [CompanyName]  NVARCHAR (20)  NOT NULL,
    [Position]     NVARCHAR (30)  NULL,
    [EmployeeName] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([AddressID]) REFERENCES [dbo].[Address] ([Id]),
    FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Person] ([Id])
);

