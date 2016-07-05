CREATE TABLE [dbo].[dtb_order_detail] (
    [order_detail_id]     INT            NOT NULL,
    [order_id]            INT            NOT NULL,
    [product_id]          INT            NOT NULL,
    [product_class_id]    INT            NOT NULL,
    [product_name]        NVARCHAR (MAX) NOT NULL,
    [product_code]        NVARCHAR (64)  NULL,
    [classcategory_name1] NVARCHAR (MAX) NULL,
    [classcategory_name2] NVARCHAR (MAX) NULL,
    [price]               NUMERIC (9)    NULL,
    [quantity]            NUMERIC (9)    NULL,
    [point_rate]          NUMERIC (9)    DEFAULT ((0)) NOT NULL,
    [tax_rate]            NUMERIC (9)    NULL,
    [tax_rule]            SMALLINT       NULL,
    PRIMARY KEY CLUSTERED ([order_detail_id] ASC),
    CONSTRAINT [FK_dtb_order_detail_dtb_order] FOREIGN KEY ([order_id]) REFERENCES [dbo].[dtb_order] ([order_id])
);


GO
ALTER TABLE [dbo].[dtb_order_detail] NOCHECK CONSTRAINT [FK_dtb_order_detail_dtb_order];


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'受注詳細ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'order_detail_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'受注ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'order_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'product_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品規格ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'product_class_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'product_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品コード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'product_code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'規格カテゴリ名1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'classcategory_name1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'規格カテゴリ名2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'classcategory_name2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'単価',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'price'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'数量',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'quantity'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ポイント付与率',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'point_rate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'消費税率',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'tax_rate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'消費税付与ルール',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_detail',
    @level2type = N'COLUMN',
    @level2name = N'tax_rule'