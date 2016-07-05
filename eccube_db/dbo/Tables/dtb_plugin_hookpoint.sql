CREATE TABLE [dbo].[dtb_plugin_hookpoint] (
    [plugin_hookpoint_id] INT                NOT NULL,
    [plugin_id]           INT                NOT NULL,
    [callback]            NVARCHAR (MAX)     NULL,
    [use_flg]             SMALLINT           DEFAULT ((1)) NOT NULL,
    [hook_point]          NVARCHAR (MAX)     NOT NULL,
    [create_date]         DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]         DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([plugin_hookpoint_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'フックポイントID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin_hookpoint',
    @level2type = N'COLUMN',
    @level2name = N'plugin_hookpoint_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'プラグインID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin_hookpoint',
    @level2type = N'COLUMN',
    @level2name = N'plugin_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コールバック',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin_hookpoint',
    @level2type = N'COLUMN',
    @level2name = N'callback'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'使用フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin_hookpoint',
    @level2type = N'COLUMN',
    @level2name = N'use_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'フックポイント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin_hookpoint',
    @level2type = N'COLUMN',
    @level2name = N'hook_point'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin_hookpoint',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin_hookpoint',
    @level2type = N'COLUMN',
    @level2name = N'update_date'