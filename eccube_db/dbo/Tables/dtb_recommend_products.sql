CREATE TABLE [dbo].[dtb_recommend_products] (
    [product_id]           INT                NOT NULL,
    [recommend_product_id] INT                NOT NULL,
    [rank]                 INT                NOT NULL,
    [comment]              NVARCHAR (MAX)     NULL,
    [status]               SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]           INT                NOT NULL,
    [create_date]          DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]          DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC)
);

