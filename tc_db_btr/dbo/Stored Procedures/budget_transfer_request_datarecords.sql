﻿
-- =============================================
-- Author:		Kenneth Cooper
-- Create date: 2017-05-17
-- Description:	Return budget_transfer_request_record with all of the data fields denormalized
-- =============================================
CREATE PROCEDURE  [dbo].[budget_transfer_request_datarecords]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT * 
From vw_budget_transfer_request_records
END


