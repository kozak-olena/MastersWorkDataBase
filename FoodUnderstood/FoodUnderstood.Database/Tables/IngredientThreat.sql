CREATE TABLE [dbo].[IngredientThreat]
(
    [IngredientId] INT NOT NULL,
    [ThreatId] INT NOT NULL,
    [ThreatLevelId] INT NOT NULL,

    CONSTRAINT [PK_IngredientThreat] PRIMARY KEY ([IngredientId], [ThreatId]),
    CONSTRAINT [FK_IngredientThreat_Ingredient] FOREIGN KEY ([IngredientId]) REFERENCES [dbo].[Ingredient](Id),
    CONSTRAINT [FK_IngredientThreat_Threat] FOREIGN KEY ([ThreatId]) REFERENCES [dbo].[Threat](Id),
    CONSTRAINT [FK_IngredientThreat_ThreatLevel] FOREIGN KEY ([ThreatLevelId]) REFERENCES [dbo].[ThreatLevel](Id)
)
