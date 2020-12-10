CREATE TABLE [dbo].[Preference]
(
    [Id] INT NOT NULL IDENTITY(1, 1) CONSTRAINT [PK_Preference] PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL CONSTRAINT [UQ_Preference_Name] UNIQUE,
    [Description] NVARCHAR(2048) NULL,
)
