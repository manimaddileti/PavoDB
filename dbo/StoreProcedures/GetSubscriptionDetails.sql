CREATE PROCEDURE [dbo].[GetSubscriptionDetails]
AS
BEGIN
    SELECT 
        [Id], 
        [Title], 
        [SubscriptionPlan], 
        [PriceTimeline], 
        [Description], 
        [CreatedBy], 
        [CreatedDate], 
        [UpdatedBy], 
        [UpdatedDate]
    FROM 
        [SubscriptionDetails]
    WHERE 
        [IsDeleted] = 0;
END;
