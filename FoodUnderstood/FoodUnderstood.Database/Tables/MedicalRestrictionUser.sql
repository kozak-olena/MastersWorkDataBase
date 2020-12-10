CREATE TABLE [dbo].[MedicalRestrictionUser]
(
    [MedicalRestrictionId] INT NOT NULL,
    [UserId] INT NOT NULL,

    CONSTRAINT [PK_MedicalRestrictionUser] PRIMARY KEY ([MedicalRestrictionId], [UserId]),
    CONSTRAINT [FK_MedicalRestrictionUser_Ingredient] FOREIGN KEY ([MedicalRestrictionId]) REFERENCES [dbo].[MedicalRestriction](Id),
    CONSTRAINT [FK_MedicalRestrictionUser_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User](Id)
)
