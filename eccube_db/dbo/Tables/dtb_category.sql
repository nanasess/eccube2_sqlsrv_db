CREATE TABLE [dbo].[dtb_category] (
    [category_id]        INT                NOT NULL,
    [category_name]      NVARCHAR (MAX)     NULL,
    [parent_category_id] INT                DEFAULT ((0)) NOT NULL,
    [level]              INT                NOT NULL,
    [rank]               INT                NULL,
    [creator_id]         INT                NOT NULL,
    [create_date]        DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]        DATETIMEOFFSET (7) NOT NULL,
    [del_flg]            SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([category_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [dtb_category_rank_idx]
    ON [dbo].[dtb_category]([rank] ASC)
    INCLUDE([category_id]);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'カテゴリID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'category_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'カテゴリ名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'category_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'親カテゴリ名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'parent_category_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'階層',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'level'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'順番',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'