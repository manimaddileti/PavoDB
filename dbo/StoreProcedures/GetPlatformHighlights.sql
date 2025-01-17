CREATE PROCEDURE [dbo].[GetPlatformHighlights]
AS
BEGIN
    SELECT 
        [Id], 
        [Image], 
        [Title], 
        [Description], 
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate]
       
    FROM 
        [PlatformHighlights]
    WHERE 
        [IsDeleted] = 0;
END;

