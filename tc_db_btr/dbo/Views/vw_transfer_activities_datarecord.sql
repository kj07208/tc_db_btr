CREATE VIEW [dbo].[vw_transfer_activities_datarecord] AS
SELECT  T.[transfer_activity_key]
      ,t.[index_key]
	  ,i.[index_description]
	  ,i.[index_number_description]
      ,t.[account_key]
	  ,a.[account_description]
	  ,a.[account_number_description]
      ,t.[amount]
      ,t.[jv_doc_id]
      ,t.[jv_complete]
      ,t.[create_jv_error_message]
      ,T.[complete_jv_status_message]
	  ,a.[account_balance]
	  ,t.[position_type_key]
	  ,xpt.[type_description] as position_type
	  ,t.created
	  ,t.created_by
	  ,uc.uni_code as created_uni_code
	  ,uc.uni_email as created_email
	  ,t.modified
	  ,t.modified_by
	  ,um.uni_code as modified_uni_code
	  ,um.uni_email as modified_email
	  ,t.approval_status_key
	  ,appstatus.approval_status_code
	  ,appstatus.approval_status_description
 FROM [dbo].[transfer_activity] t inner join [Index] i on t.index_key = i.index_key
  inner join [Account] a on t.[account_key] = a.[account_key] 
  inner join [xref_position_type] xpt on (t.[position_type_key] = xpt.[type_key])
  inner join [users] uc on (t.created_by = uc.uni_key)
  inner join [users] um on (t.modified_by = um.uni_key)
  inner join [approval_status] appstatus on (t.approval_status_key = appstatus.approval_status_key)
