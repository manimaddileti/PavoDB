CREATE TABLE [dbo].[PageContent]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
    [Title] NVARCHAR(100) NOT NULL,
    [Image] NVARCHAR(250) NOT NULL,
    [Description] NVARCHAR(250),
	[OrderBy] INT,
	[ParentId] INT,
    [CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),       
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_PageContent_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_PageContent_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_PageContent_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
);
GO