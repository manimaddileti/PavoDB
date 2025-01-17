CREATE PROCEDURE [dbo].[GetActivityMetrics]
AS
BEGIN
    SELECT 
        [Id], 
        [Title], 
        [EndUsers],  
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate] 
    FROM 
        [ActivityMetrics]
    WHERE 
        [IsDeleted] = 0;
END;
