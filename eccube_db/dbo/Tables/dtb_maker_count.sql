CREATE TABLE [dbo].[dtb_maker_count] (
    [maker_id]      INT                NOT NULL,
    [product_count] INT                NOT NULL,
    [create_date]   DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([maker_id] ASC)
);

