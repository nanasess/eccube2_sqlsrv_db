﻿CREATE TABLE [dbo].[dtb_product_categories] (
    [product_id]  INT NOT NULL,
    [category_id] INT NOT NULL,
    [rank]        INT NOT NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC, [category_id] ASC),
    CONSTRAINT [FK_dtb_product_categories_dtb_category] FOREIGN KEY ([category_id]) REFERENCES [dbo].[dtb_category] ([category_id]),
    CONSTRAINT [FK_dtb_product_categories_dtb_products] FOREIGN KEY ([product_id]) REFERENCES [dbo].[dtb_products] ([product_id])
);


GO
ALTER TABLE [dbo].[dtb_product_categories] NOCHECK CONSTRAINT [FK_dtb_product_categories_dtb_category];


GO
ALTER TABLE [dbo].[dtb_product_categories] NOCHECK CONSTRAINT [FK_dtb_product_categories_dtb_products];


GO
CREATE NONCLUSTERED INDEX [product_category_category_id_idx]
    ON [dbo].[dtb_product_categories]([category_id] ASC)
    INCLUDE([product_id]);


GO
CREATE NONCLUSTERED INDEX [dtb_product_categories_rank_idx]
    ON [dbo].[dtb_product_categories]([rank] ASC)
    INCLUDE([product_id]);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_product_categories',
    @level2type = N'COLUMN',
    @level2name = N'product_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'カテゴリID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_product_categories',
    @level2type = N'COLUMN',
    @level2name = N'category_id'