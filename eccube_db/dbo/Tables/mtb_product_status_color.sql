CREATE TABLE mtb_product_status_color (
    id smallint,
    name nvarchar(256),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品ステータスカラー',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_product_status_color',
    @level2type = NULL,
    @level2name = NULL
