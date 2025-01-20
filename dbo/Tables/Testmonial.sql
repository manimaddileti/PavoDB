CREATE TABLE [dbo].[Testmonial]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Image] NVARCHAR(250),
	[Description] NVARCHAR(150),
	[Name] NVARCHAR(30),
	[Designation] NVARCHAR(10),
	[CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),        
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_Testmonial_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_Testmonial_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_Testmonial_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
);
GO

