CREATE TABLE [dbo].[HeaderSection]
(
	[Id] INT IDENTITY(1,1)PRIMARY KEY,
    [Title] NVARCHAR(150),
    [Description] NVARCHAR(250) NOT NULL,
	[Image] NVARCHAR(250),
    [TYPE] NVARCHAR(15) NOT NULL,
	[Icons] NVARCHAR(250),
	[Buttons] TEXT,
	[CreatedBy] INT NOT NULL,  
    [CreatedDate] DATETIME DEFAULT GETDATE(),        
    [UpdatedBy] INT, 
    [UpdatedDate] DATETIME,               
    [DeletedBy] INT,  
    [IsDeleted] Bit Default 0,
    CONSTRAINT [FK_HeaderSection_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_HeaderSection_UpdatedBy] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[User]([Id]),
    CONSTRAINT [FK_HeaderSection_DeletedBy] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User]([Id]),
);
GO
