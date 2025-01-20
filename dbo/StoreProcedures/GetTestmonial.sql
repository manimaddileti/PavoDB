CREATE PROCEDURE [dbo].[GetTestmonial]
AS
BEGIN
    SELECT 
        [Id], 
        [Image], 
        [Description], 
        [Name], 
        [Designation], 
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate] 
    FROM 
        [Testmonial]
    WHERE 
        [IsDeleted] = 0;
END;
