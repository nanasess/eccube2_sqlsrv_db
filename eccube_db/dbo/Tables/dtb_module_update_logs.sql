CREATE TABLE [dbo].[dtb_module_update_logs] (
    [log_id]      INT                NOT NULL,
    [module_id]   INT                NOT NULL,
    [buckup_path] NVARCHAR (4000)     NULL,
    [error_flg]   SMALLINT           DEFAULT ((0)) NULL,
    [error]       NVARCHAR (MAX)     NULL,
    [ok]          NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([log_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新ログ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ログID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = N'COLUMN',
    @level2name = N'log_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'モジュールID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = N'COLUMN',
    @level2name = N'module_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'バックアップパス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = N'COLUMN',
    @level2name = N'buckup_path'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'エラーフラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = N'COLUMN',
    @level2name = N'error_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'エラー内容',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = N'COLUMN',
    @level2name = N'error'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'OK',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = N'COLUMN',
    @level2name = N'ok'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module_update_logs',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
