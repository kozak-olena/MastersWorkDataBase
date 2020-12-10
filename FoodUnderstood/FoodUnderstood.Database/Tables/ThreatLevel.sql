﻿CREATE TABLE [dbo].[ThreatLevel]
(
    [Id] INT NOT NULL IDENTITY(1, 1) CONSTRAINT [PK_ThreatLevel] PRIMARY KEY,
    [Name] NVARCHAR(255) NOT NULL CONSTRAINT [UQ_ThreatLevel_Name] UNIQUE,
    [Description] NVARCHAR(2048) NULL,
)
