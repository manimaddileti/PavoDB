CREATE PROCEDURE [dbo].[GetPageContent]
AS
BEGIN
    SELECT 
        [Id], 
        [Title], 
        [Image], 
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate]
    FROM 
        [PageContent]
    WHERE 
        [IsDeleted] = 0;
END;
