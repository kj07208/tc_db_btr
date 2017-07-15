-- =============================================
-- Author:		Ken Cooper
-- Create date: 4/25/17
-- Description:	Get all rows from approval matrix
-- =============================================
CREATE PROCEDURE [dbo].[approval_matrix_all_approvers]
	@index_key int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Select * 
	From dbo.approval_matrix
	Where index_key = @index_key 
END

