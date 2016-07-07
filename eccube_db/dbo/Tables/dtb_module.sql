CREATE TABLE [dbo].[dtb_module] (
    [module_id]       INT                NOT NULL,
    [module_code]     NVARCHAR (MAX)     NOT NULL,
    [module_name]     NVARCHAR (MAX)     NOT NULL,
    [sub_data]        NVARCHAR (MAX)     NULL,
    [auto_update_flg] SMALLINT           DEFAULT ((0)) NOT NULL,
    [del_flg]         SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]     DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]     DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([module_id] ASC),
    UNIQUE NONCLUSTERED ([module_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'モジュール',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'モジュールID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = N'COLUMN',
    @level2name = N'module_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'モジュールコード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = N'COLUMN',
    @level2name = N'module_code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'モジュール名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = N'COLUMN',
    @level2name = N'module_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブデータ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = N'COLUMN',
    @level2name = N'sub_data'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'自動更新フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = N'COLUMN',
    @level2name = N'auto_update_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_module',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
