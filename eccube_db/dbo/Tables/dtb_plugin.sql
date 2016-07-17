CREATE TABLE [dbo].[dtb_plugin] (
    [plugin_id]          INT                NOT NULL,
    [plugin_name]        NVARCHAR (256)     NOT NULL,
    [plugin_code]        NVARCHAR (256)     NOT NULL,
    [class_name]         NVARCHAR (4000)     NOT NULL,
    [author]             NVARCHAR (4000)     NULL,
    [author_site_url]    NVARCHAR (4000)     NULL,
    [plugin_site_url]    NVARCHAR (4000)     NULL,
    [plugin_version]     NVARCHAR (4000)     NULL,
    [compliant_version]  NVARCHAR (4000)     NULL,
    [plugin_description] NVARCHAR (4000)     NULL,
    [priority]           INT                DEFAULT ((0)) NOT NULL,
    [enable]             SMALLINT           DEFAULT ((0)) NOT NULL,
    [free_field1]        NVARCHAR (MAX)     NULL,
    [free_field2]        NVARCHAR (MAX)     NULL,
    [free_field3]        NVARCHAR (MAX)     NULL,
    [free_field4]        NVARCHAR (MAX)     NULL,
    [create_date]        DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]        DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([plugin_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'プラグインID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'plugin_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'プラグイン名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'plugin_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'プラグインコード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'plugin_code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'クラス名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'class_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'author'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サイトURL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'author_site_url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サイトURL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'plugin_site_url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'バージョン',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'plugin_version'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'対応バージョン',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'compliant_version'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'詳細',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'plugin_description'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'優先度',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'priority'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'有効',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'enable'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'自由項目1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'free_field1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'自由項目2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'free_field2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'自由項目3',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'free_field3'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'自由項目4',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'free_field4'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_plugin',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
