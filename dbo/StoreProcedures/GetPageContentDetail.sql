CREATE PROCEDURE [dbo].[GetPageContentDetail]
AS
BEGIN
    SELECT 
        [Id], 
        [Description_1], 
        [Description_2], 
        [Description_3],
        [PageContentId],
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate]
    FROM 
        [PageContentDetail]
    WHERE 
        [IsDeleted] = 0;
END;
