CREATE TABLE [dbo].[Company] (
    [Id]        INT           NOT NULL,
    [Name]      NVARCHAR (20) NOT NULL,
    [AddressId] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id])
);

