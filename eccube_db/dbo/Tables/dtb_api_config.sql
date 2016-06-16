CREATE TABLE [dbo].[dtb_api_config] (
    [api_config_id]         INT                NOT NULL,
    [operation_name]        NVARCHAR (MAX)     NOT NULL,
    [operation_description] NVARCHAR (MAX)     NULL,
    [auth_types]            NVARCHAR (MAX)     NOT NULL,
    [enable]                SMALLINT           DEFAULT ((0)) NOT NULL,
    [is_log]                SMALLINT           DEFAULT ((0)) NOT NULL,
    [sub_data]              NVARCHAR (MAX)     NULL,
    [del_flg]               SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]           DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]           DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([api_config_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'設定ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'api_config_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'操作名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'operation_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'詳細',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'operation_description'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'認証タイプ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'auth_types'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'有効フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'enable'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ログ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'is_log'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブデータ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'sub_data'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_api_config',
    @level2type = N'COLUMN',
    @level2name = N'update_date'