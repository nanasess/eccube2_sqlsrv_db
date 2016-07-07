CREATE TABLE [dbo].[dtb_shipment_item] (
    [shipping_id]         INT            NOT NULL,
    [product_class_id]    INT            NOT NULL,
    [order_id]            INT            NOT NULL,
    [product_name]        NVARCHAR (MAX) NOT NULL,
    [product_code]        NVARCHAR (64)  NULL,
    [classcategory_name1] NVARCHAR (MAX) NULL,
    [classcategory_name2] NVARCHAR (MAX) NULL,
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
