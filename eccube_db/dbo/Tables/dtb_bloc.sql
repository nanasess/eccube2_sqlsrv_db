CREATE TABLE [dbo].[dtb_bloc] (
    [device_type_id] INT                NOT NULL,
    [bloc_id]        INT                NOT NULL,
    [bloc_name]      NVARCHAR (MAX)     NULL,
    [tpl_path]       NVARCHAR (MAX)     NULL,
    [filename]       VARCHAR (64)       NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    [php_path]       NVARCHAR (MAX)     NULL,
    [deletable_flg]  SMALLINT           DEFAULT ((1)) NOT NULL,
    [plugin_id]      INT                NULL,
    PRIMARY KEY CLUSTERED ([device_type_id] ASC, [bloc_id] ASC),
    UNIQUE NONCLUSTERED ([device_type_id] ASC, [filename] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ブロック情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'デバイス種別ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'device_type_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ブロックID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'bloc_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ブロック名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'bloc_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'テンプレート名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'tpl_path'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ファイル名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'filename'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'PHPパス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'php_path'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除可能フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'deletable_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'プラグインID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bloc',
    @level2type = N'COLUMN',
    @level2name = N'plugin_id'
