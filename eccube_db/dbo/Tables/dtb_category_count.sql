CREATE TABLE [dbo].[dtb_category_count] (
    [category_id]   INT                NOT NULL,
    [product_count] INT                NOT NULL,
    [create_date]   DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([category_id] ASC)
);

