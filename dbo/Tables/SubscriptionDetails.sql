CREATE TABLE [dbo].[SubscriptionDetails]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Title] NVARCHAR(8) NOT NULL,
    [SubscriptionPlan] VARCHAR(4),
    [PriceTimeline] NVARCHAR(30) NOT NULL,
	[Description] NVARCHAR(100) NOT NULL,
	[CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),       
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_SubscriptionDetails_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_SubscriptionDetails_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_SubscriptionDetails_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
);
GO

