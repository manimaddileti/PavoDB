CREATE TABLE [dbo].[PlatformHighlights]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Image] NVARCHAR(250) NOT NULL,
    [Title] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(250) NOT NULL,
    [CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),    
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
	CONSTRAINT [FK_PlatformHighlights_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_PlatformHighlights_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_PlatformHighlights_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
);
GO
