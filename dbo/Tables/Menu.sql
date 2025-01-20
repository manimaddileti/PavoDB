CREATE TABLE [dbo].[Menu]
(
    [Id] INT IDENTITY(1,1) PRIMARY KEY,
    [Title] NVARCHAR(100) NOT NULL,
	[OrderBy] INT,
	[ParentId] INT NULL,
	[Icons] NVARCHAR(250),
	[CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),       
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_Menu_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_Menu_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_Menu_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_Menu_ParentId] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Menu]([Id]),
);
GO
