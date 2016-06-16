CREATE TABLE [dbo].[dtb_products_class] (
    [product_class_id]  INT                NOT NULL,
    [product_id]        INT                NOT NULL,
    [classcategory_id1] INT                DEFAULT ((0)) NOT NULL,
    [classcategory_id2] INT                DEFAULT ((0)) NOT NULL,
    [product_type_id]   INT                DEFAULT ((0)) NOT NULL,
    [product_code]      NVARCHAR (64)      NULL,
    [stock]             NUMERIC (9)        NULL,
    [stock_unlimited]   SMALLINT           DEFAULT ((0)) NOT NULL,
    [sale_limit]        NUMERIC (9)        NULL,
    [price01]           NUMERIC (9)        NULL,
    [price02]           NUMERIC (9)        NOT NULL,
    [deliv_fee]         NUMERIC (9)        NULL,
    [point_rate]        NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [creator_id]        INT                NOT NULL,
    [create_date]       DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]       DATETIMEOFFSET (7) NOT NULL,
    [down_filename]     NVARCHAR (MAX)     NULL,
    [down_realfilename] NVARCHAR (MAX)     NULL,
    [del_flg]           SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([product_class_id] ASC),
    CONSTRAINT [FK_dtb_products_class_dtb_classcategory1] FOREIGN KEY ([classcategory_id1]) REFERENCES [dbo].[dtb_classcategory] ([classcategory_id]),
    CONSTRAINT [FK_dtb_products_class_dtb_classcategory2] FOREIGN KEY ([classcategory_id2]) REFERENCES [dbo].[dtb_classcategory] ([classcategory_id]),
    CONSTRAINT [FK_dtb_products_class_dtb_products] FOREIGN KEY ([product_id]) REFERENCES [dbo].[dtb_products] ([product_id]),
    UNIQUE NONCLUSTERED ([product_id] ASC, [classcategory_id1] ASC, [classcategory_id2] ASC)
);


GO
ALTER TABLE [dbo].[dtb_products_class] NOCHECK CONSTRAINT [FK_dtb_products_class_dtb_classcategory1];


GO
ALTER TABLE [dbo].[dtb_products_class] NOCHECK CONSTRAINT [FK_dtb_products_class_dtb_classcategory2];


GO
ALTER TABLE [dbo].[dtb_products_class] NOCHECK CONSTRAINT [FK_dtb_products_class_dtb_products];


GO
CREATE NONCLUSTERED INDEX [stock_unlimited_idx]
    ON [dbo].[dtb_products_class]([stock_unlimited] ASC)
    INCLUDE([product_id]);


GO
CREATE NONCLUSTERED INDEX [stock_idx]
    ON [dbo].[dtb_products_class]([stock] ASC)
    INCLUDE([product_id]);


GO
CREATE NONCLUSTERED INDEX [product_id_idx]
    ON [dbo].[dtb_products_class]([product_id] ASC);


GO
CREATE NONCLUSTERED INDEX [product_code_idx]
    ON [dbo].[dtb_products_class]([product_code] ASC)
    INCLUDE([product_id]);


GO
CREATE NONCLUSTERED INDEX [price02_idx]
    ON [dbo].[dtb_products_class]([price02] ASC)
    INCLUDE([product_id]);


GO
CREATE NONCLUSTERED INDEX [price01_idx]
    ON [dbo].[dtb_products_class]([price01] ASC)
    INCLUDE([product_id]);


GO
CREATE NONCLUSTERED INDEX [point_rate_idx]
    ON [dbo].[dtb_products_class]([point_rate] ASC)
    INCLUDE([product_id]);


GO
CREATE NONCLUSTERED INDEX [IX_dtb_products_class_0]
    ON [dbo].[dtb_products_class]([del_flg] ASC);


GO
CREATE NONCLUSTERED INDEX [dtb_products_class_count_idx]
    ON [dbo].[dtb_products_class]([del_flg] ASC)
    INCLUDE([product_id], [product_code], [stock], [stock_unlimited], [price02]);


GO
CREATE NONCLUSTERED INDEX [deliv_fee_idx]
    ON [dbo].[dtb_products_class]([deliv_fee] ASC)
    INCLUDE([product_id]);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品規格',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products_class',
    @level2type = NULL,
    @level2name = NULL