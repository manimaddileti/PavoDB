CREATE PROCEDURE [dbo].[GetUser]
	AS
	BEGIN
    SELECT 
        [Id], 
        [UserName], 
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate]
    FROM 
        [User]
    WHERE 
        [IsDeleted] = 0;
END;

