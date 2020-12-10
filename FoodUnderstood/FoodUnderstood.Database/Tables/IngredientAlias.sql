CREATE TABLE [dbo].[IngredientAlias]
(
    [Id] INT NOT NULL IDENTITY(1, 1) CONSTRAINT [PK_IngredientAlias] PRIMARY KEY,
    [IngredientId] INT NOT NULL CONSTRAINT [FK_IngredientAlias_Ingredient] FOREIGN KEY REFERENCES [dbo].[Ingredient](Id),
    [Name] NVARCHAR(255) NOT NULL,

    CONSTRAINT [UQ_Ingredient_IngredientId,Name] UNIQUE ([IngredientId], [Name])
)
