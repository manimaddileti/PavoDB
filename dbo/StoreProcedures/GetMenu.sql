CREATE PROCEDURE [dbo].[GetMenu]
AS
BEGIN
    SELECT 
        [Id], 
        [Title], 
        [OrderBy], 
        [ParentId], 
        [Icons], 
        [CreatedBy],
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate]
    FROM 
        [Menu]
    WHERE 
        [IsDeleted] = 0;
END;

