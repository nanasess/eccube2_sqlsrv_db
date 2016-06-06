CREATE TABLE [dbo].[dtb_customer_favorite_products] (
    [customer_id] INT                NOT NULL,
    [product_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([customer_id] ASC, [product_id] ASC)
);

