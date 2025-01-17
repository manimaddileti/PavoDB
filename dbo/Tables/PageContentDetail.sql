CREATE TABLE [dbo].[PageContentDetail]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Description_1] NVARCHAR(250),
    [Description_2] NVARCHAR(100) NOT NULL,
    [Description_3] NVARCHAR(250),
    [PageContentId] INT,
    [CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),        
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_PageContentDetail_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_PageContentDetail_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_PageContentDetail_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_PageContentDetail_ParentId] FOREIGN KEY ([PageContentId]) REFERENCES [dbo].[PageContent]([Id]),
);
GO
