CREATE TABLE [dbo].[dtb_csv] (
    [no]                     INT                NOT NULL,
    [csv_id]                 INT                NOT NULL,
    [col]                    NVARCHAR (MAX)     NULL,
    [disp_name]              NVARCHAR (256)     NULL,
    [rank]                   INT                NULL,
    [rw_flg]                 SMALLINT           DEFAULT ((1)) NULL,
    [status]                 SMALLINT           DEFAULT ((1)) NOT NULL,
    [create_date]            DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]            DATETIMEOFFSET (7) NOT NULL,
    [mb_convert_kana_option] NVARCHAR (256)     NULL,
    [size_const_type]        NVARCHAR (256)     NULL,
    [error_check_types]      NVARCHAR (256)     NULL,
    PRIMARY KEY CLUSTERED ([no] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'CSVフォーマット',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'No.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'no'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'CSV ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'csv_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'カラム',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'col'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'表示名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'disp_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'順番',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新可能フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'rw_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ステータス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'カナ変換オプション',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'mb_convert_kana_option'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サイズ定義',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'size_const_type'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'エラーチェック',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv',
    @level2type = N'COLUMN',
    @level2name = N'error_check_types'
