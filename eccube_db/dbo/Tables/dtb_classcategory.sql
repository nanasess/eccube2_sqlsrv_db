CREATE TABLE [dbo].[dtb_classcategory] (
    [classcategory_id] INT                NOT NULL,
    [name]             NVARCHAR (256)     NULL,
    [class_id]         INT                NOT NULL,
    [rank]             INT                NULL,
    [creator_id]       INT                NOT NULL,
    [create_date]      DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]      DATETIMEOFFSET (7) NOT NULL,
    [del_flg]          SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([classcategory_id] ASC),
    CONSTRAINT [FK_dtb_classcategory_dtb_class] FOREIGN KEY ([class_id]) REFERENCES [dbo].[dtb_class] ([class_id])
);


GO
ALTER TABLE [dbo].[dtb_classcategory] NOCHECK CONSTRAINT [FK_dtb_classcategory_dtb_class];

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'規格分類',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'規格分類ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = N'COLUMN',
    @level2name = N'classcategory_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'規格分類名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = N'COLUMN',
    @level2name = N'name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'規格ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = N'COLUMN',
    @level2name = N'class_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'順番',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_classcategory',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
