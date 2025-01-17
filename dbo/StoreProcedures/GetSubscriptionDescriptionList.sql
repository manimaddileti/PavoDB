CREATE PROCEDURE [dbo].[GetSubscriptionDescriptionList]
AS
BEGIN
    SELECT 
        [Id], 
        [SubscriptionId], 
        [Description], 
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate]
    FROM 
        [SubscriptionDescriptionList]
    WHERE 
        [IsDeleted] = 0;
END;
