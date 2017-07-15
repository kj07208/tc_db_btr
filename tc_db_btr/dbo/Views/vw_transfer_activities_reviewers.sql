CREATE VIEW [dbo].[vw_transfer_activities_reviewers] AS
	Select ta.*, 
	tar.role_level, 
	tar.status_key as approver_status_key, 
	tar.approver_uni_key as approver_uni_key,
	u.uni_name as approver_uni_name, 
	u.uni_email as approver_email, 
	u.uni_code as approver_uni_code
	From [dbo].[vw_transfer_activities_datarecords] ta
	  inner join [dbo].[transfer_activity_reviewers] tar on (ta.transfer_activity_key = tar.transfer_activity_key)
	  inner join [dbo].[users] u on (tar.approver_uni_key = u.uni_key)
