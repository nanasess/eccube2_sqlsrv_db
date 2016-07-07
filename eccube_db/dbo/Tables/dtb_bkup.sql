CREATE TABLE [dbo].[dtb_bkup] (
    [bkup_name]   VARCHAR (64)       NOT NULL,
    [bkup_memo]   NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([bkup_name] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'バックアップ情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bkup',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'バックアップ名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bkup',
    @level2type = N'COLUMN',
    @level2name = N'bkup_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'バックアップメモ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bkup',
    @level2type = N'COLUMN',
    @level2name = N'bkup_memo'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_bkup',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
