﻿CREATE TABLE [dbo].[Address] (
    [Id]      INT           IDENTITY (1, 1) NOT NULL,
    [Street]  NVARCHAR (50) NOT NULL,
    [City]    NVARCHAR (50) NULL,
    [State]   NVARCHAR (50) NULL,
    [ZipCode] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



