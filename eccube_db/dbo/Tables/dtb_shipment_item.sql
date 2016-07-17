CREATE TABLE [dbo].[dtb_shipment_item] (
    [shipping_id]         INT            NOT NULL,
    [product_class_id]    INT            NOT NULL,
    [order_id]            INT            NOT NULL,
    [product_name]        NVARCHAR (256) NOT NULL,
    [product_code]        NVARCHAR (64)  NULL,
    [classcategory_name1] NVARCHAR (256) NULL,
    [classcategory_name2] NVARCHAR (256) NULL,
    [price]               NUMERIC (9)    NULL,
    [quantity]            NUMERIC (9)    NULL,
    PRIMARY KEY CLUSTERED ([shipping_id] ASC, [product_class_id] ASC, [order_id] ASC),
    CONSTRAINT [FK_dtb_shipment_item_dtb_shipping] FOREIGN KEY ([shipping_id], [order_id]) REFERENCES [dbo].[dtb_shipping] ([shipping_id], [order_id])
);


GO
ALTER TABLE [dbo].[dtb_shipment_item] NOCHECK CONSTRAINT [FK_dtb_shipment_item_dtb_shipping];

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送商品情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'shipping_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品規格ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'product_class_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'受注ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'order_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'product_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品コード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'product_code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品規格1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'classcategory_name1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品規格2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'classcategory_name2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'金額',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'price'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'数量',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipment_item',
    @level2type = N'COLUMN',
    @level2name = N'quantity'
