CREATE TABLE [dbo].[User]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[UserName] NVARCHAR(15) NOT NULL,
	[CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),       
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_User_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_User_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_User_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
);
GO