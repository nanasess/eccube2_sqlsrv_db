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

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'おすすめ商品情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_recommend_products',
    @level2type = NULL,
    @level2name = NULL
