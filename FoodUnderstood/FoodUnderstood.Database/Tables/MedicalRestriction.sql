CREATE TABLE [dbo].[MedicalRestriction]
(
    [Id] INT NOT NULL IDENTITY(1, 1) CONSTRAINT [PK_MedicalRestriction] PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL,
    [Description] NVARCHAR(2048) NULL,
    [IsPrivate] BIT NOT NULL,
    [CreatedBy] INT NOT NULL CONSTRAINT [FK_MedicalRestriction(CreatedBy)_User] FOREIGN KEY REFERENCES [dbo].[User](Id)
)
