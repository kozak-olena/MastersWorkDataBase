CREATE TABLE [dbo].[UserPreference]
(
    [UserId] INT NOT NULL,
    [IngredientId] INT NOT NULL,
    [PreferenceId] INT NOT NULL,

    CONSTRAINT [PK_UserPreference] PRIMARY KEY ([UserId], [IngredientId]),
    CONSTRAINT [FK_UserPreference_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User](Id),
    CONSTRAINT [FK_UserPreference_Ingredient] FOREIGN KEY ([IngredientId]) REFERENCES [dbo].[Ingredient](Id),
    CONSTRAINT [FK_UserPreference_ThreatLevel] FOREIGN KEY ([PreferenceId]) REFERENCES [dbo].[Preference](Id)
)
