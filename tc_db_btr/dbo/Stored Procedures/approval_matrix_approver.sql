﻿-- =============================================
-- Author:		Ken Cooper
-- Create date: 4/25/17
-- Description:	Get approval matrix rows by index_key and role_level
-- =============================================
CREATE PROCEDURE [dbo].[approval_matrix_approver]
	@index_key int,
	@role_level varchar(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Select * 
	From dbo.approval_matrix
	Where index_key = @index_key and role_level = @role_level
END

