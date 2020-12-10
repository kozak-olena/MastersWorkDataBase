CREATE TABLE [dbo].[ThreatGroup]
(
    [Id] INT NOT NULL IDENTITY(1, 1) CONSTRAINT [PK_ThreatGroup] PRIMARY KEY,
    [Name] VARCHAR(255) NOT NULL CONSTRAINT [UQ_ThreatGroup_Name] UNIQUE,
    [Description] VARCHAR(1024) NULL
)
