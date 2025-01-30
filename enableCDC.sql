Script to enable CDC:

 

EXEC sys.sp_cdc_enable_db;

ALTER DATABASE TokyoData
SET CHANGE_TRACKING = ON
(CHANGE_RETENTION = 3 DAYS, AUTO_CLEANUP = ON)

EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'GAME', /@capture_instance= 'dbo_tbParameters'/ @role_name = NULL, @supports_net_changes = 0;
GO

EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'GAMEVALUES', /@capture_instance= 'dbo_tbParameters'/ @role_name = NULL, @supports_net_changes = 0;
GO

EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'WAGERHEADER', /@capture_instance= 'dbo_tbParameters'/ @role_name = NULL, @supports_net_changes = 0;
GO

EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'GAMETNTPROPACTION', /@capture_instance= 'dbo_tbParameters'/ @role_name = NULL, @supports_net_changes = 0;
GO

EXEC sys.sp_cdc_help_change_data_capture
GO
