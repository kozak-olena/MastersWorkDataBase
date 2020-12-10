CREATE TABLE [dbo].[IngredientHierarchy]
(
    [ParentIngredientId] INT NOT NULL,
    [ChildIngredientId] INT NOT NULL,

    CONSTRAINT [PK_IngredientHierarchy] PRIMARY KEY ([ParentIngredientId], [ChildIngredientId]),
    CONSTRAINT [FK_IngredientHierarchy(Parent)_Ingredient] FOREIGN KEY ([ParentIngredientId]) REFERENCES [dbo].[Ingredient](Id),
    CONSTRAINT [FK_IngredientHierarchy(Child)_Ingredient] FOREIGN KEY ([ChildIngredientId]) REFERENCES [dbo].[Ingredient](Id),
)
