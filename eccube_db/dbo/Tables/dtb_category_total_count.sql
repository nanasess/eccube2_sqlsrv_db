CREATE TABLE [dbo].[dtb_category_total_count] (
    [category_id]   INT                NOT NULL,
    [product_count] INT                NULL,
    [create_date]   DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([category_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'カテゴリトータルカウント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_category_total_count',
    @level2type = NULL,
    @level2name = NULL
