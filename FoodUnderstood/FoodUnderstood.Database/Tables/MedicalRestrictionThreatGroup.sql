CREATE TABLE [dbo].[MedicalRestrictionThreatGroup]
(
    [MedicalRestrictionId] INT NOT NULL,
    [ThreatGroupId] INT NOT NULL,

    CONSTRAINT [PK_MedicalRestrictionThreatGroup] PRIMARY KEY ([MedicalRestrictionId], [ThreatGroupId]),
    CONSTRAINT [FK_MedicalRestrictionThreatGroup_MedicalRestriction] FOREIGN KEY ([MedicalRestrictionId]) REFERENCES [dbo].[MedicalRestriction](Id),
    CONSTRAINT [FK_MedicalRestrictionThreatGroup_ThreatGroup] FOREIGN KEY ([ThreatGroupId]) REFERENCES [dbo].[ThreatGroup](Id)
)
