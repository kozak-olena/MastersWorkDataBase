CREATE TABLE [dbo].[Permission]
(
    [Id] INT NOT NULL IDENTITY(1, 1) CONSTRAINT [PK_Permission] PRIMARY KEY,
    [Name] VARCHAR(255) NOT NULL CONSTRAINT [UQ_Permission_Name] UNIQUE,
    [Description] VARCHAR(1024) NULL
)
