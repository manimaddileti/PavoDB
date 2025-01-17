CREATE PROCEDURE [dbo].[GetHeaderSection]
AS
BEGIN
    SELECT 
        [Id], 
        [Title], 
        [Description], 
        [Image], 
        [TYPE], 
        [Icons], 
        [Buttons], 
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate]
    FROM 
        [HeaderSection]
    WHERE 
        [IsDeleted] = 0;
END;
