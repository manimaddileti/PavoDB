CREATE TABLE [dbo].[SubscriptionDescriptionList]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[SubscriptionId] INT NOT NULL, 
    [Description] NVARCHAR(50) NOT NULL,
	[CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),        
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_SubscriptionDescriptionList_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_SubscriptionDescriptionList_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_SubscriptionDescriptionList_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_SubscriptionDescriptionList_ParentId] FOREIGN KEY ([SubscriptionId]) REFERENCES [dbo].[SubscriptionDetails]([Id]),
);
GO
