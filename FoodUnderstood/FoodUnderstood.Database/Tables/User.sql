CREATE TABLE [dbo].[User]
(
    [Id] INT NOT NULL IDENTITY(1, 1) CONSTRAINT [PK_User] PRIMARY KEY,
    [RoleId] INT NOT NULL CONSTRAINT [FK_User_UserRole] FOREIGN KEY REFERENCES [dbo].[UserRole]([Id]),
    [Login] VARCHAR(255) NOT NULL,
    [FirstName] NVARCHAR(255) NOT NULL,
    [LastName] NVARCHAR(255) NOT NULL,
    [PasswordHash] VARCHAR(48) NOT NULL,
    [PhoneNumber] INT NULL
)
