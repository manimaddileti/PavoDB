CREATE PROCEDURE [dbo].[GetFooter]
AS
BEGIN
    SELECT 
        [Id], 
        [CopyRights], 
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate] 
    FROM 
        [Footer]
    WHERE 
        [IsDeleted] = 0;
END;
