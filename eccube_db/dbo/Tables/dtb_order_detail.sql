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

