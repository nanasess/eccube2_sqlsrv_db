﻿CREATE TABLE [dbo].[dtb_maker_count] (
    [maker_id]      INT                NOT NULL,
    [product_count] INT                NOT NULL,
    [create_date]   DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([maker_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メーカーカウント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_maker_count',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メーカーID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_maker_count',
    @level2type = N'COLUMN',
    @level2name = N'maker_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_maker_count',
    @level2type = N'COLUMN',
    @level2name = N'product_count'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_maker_count',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
