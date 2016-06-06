CREATE TABLE [dbo].[dtb_category_total_count] (
    [category_id]   INT                NOT NULL,
    [product_count] INT                NULL,
    [create_date]   DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([category_id] ASC)
);

