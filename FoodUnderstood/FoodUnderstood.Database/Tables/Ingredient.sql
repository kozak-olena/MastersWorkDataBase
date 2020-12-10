CREATE TABLE [dbo].[Ingredient]
(
    [Id] INT NOT NULL IDENTITY(1, 1) CONSTRAINT [PK_Ingredient] PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL CONSTRAINT [UQ_Ingredient_Name] UNIQUE,
    [Description] NVARCHAR(2048) NULL
)
