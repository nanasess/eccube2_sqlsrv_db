CREATE TABLE [dbo].[dtb_product_status] (
    [product_status_id] SMALLINT           NOT NULL,
    [product_id]        INT                NOT NULL,
    [creator_id]        INT                NOT NULL,
    [create_date]       DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]       DATETIMEOFFSET (7) NOT NULL,
    [del_flg]           SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([product_status_id] ASC, [product_id] ASC),
    CONSTRAINT [FK_dtb_product_status_dtb_products] FOREIGN KEY ([product_id]) REFERENCES [dbo].[dtb_products] ([product_id])
);


GO
ALTER TABLE [dbo].[dtb_product_status] NOCHECK CONSTRAINT [FK_dtb_product_status_dtb_products];

