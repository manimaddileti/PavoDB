CREATE TABLE [dbo].[ActivityMetrics]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Title] NVARCHAR(30) NOT NULL,
	[EndUsers] INT,
	[CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_ActivityMetrics_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_ActivityMetrics_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_ActivityMetrics_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
);
GO

