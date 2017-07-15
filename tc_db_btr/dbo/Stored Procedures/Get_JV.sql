-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_JV]
	-- Add the parameters for the stored procedure here
	-- Add the parameters for the stored procedure here
	@jv_doc_id varchar(26) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN
		EXEC ('BEGIN bzebxfr.f_get_jv_id(?); END;',  @jv_doc_id OUTPUT) AT [BANNER-PPRD]
	END
	
	
END
