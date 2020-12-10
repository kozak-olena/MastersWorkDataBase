CREATE TABLE [dbo].[UserRolePermission]
(
    [UserRoleId] INT NOT NULL,
    [PermissionId] INT NOT NULL,

    CONSTRAINT [PK_UserRolePermission] PRIMARY KEY ([UserRoleId], [PermissionId]),
    CONSTRAINT [FK_UserRolePermission_UserRole] FOREIGN KEY ([UserRoleId]) REFERENCES [dbo].[UserRole](Id),
    CONSTRAINT [FK_UserRolePermission_Permission] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[Permission](Id)
)
