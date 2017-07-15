ALTER ROLE [db_owner] ADD MEMBER [tc_budget_user];


GO
ALTER ROLE [db_owner] ADD MEMBER [TC-PROD-SQLSVR\themaster];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [tc_budget_user];

