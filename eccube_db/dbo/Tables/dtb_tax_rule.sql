CREATE TABLE [dbo].[dtb_tax_rule] (
    [tax_rule_id]      INT                NOT NULL,
    [country_id]       INT                DEFAULT ((0)) NOT NULL,
    [pref_id]          INT                DEFAULT ((0)) NOT NULL,
    [product_id]       INT                DEFAULT ((0)) NOT NULL,
    [product_class_id] INT                DEFAULT ((0)) NOT NULL,
    [calc_rule]        SMALLINT           DEFAULT ((1)) NOT NULL,
    [tax_rate]         NUMERIC (9)        DEFAULT ((8)) NOT NULL,
    [tax_adjust]       NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [apply_date]       DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [member_id]        INT                NOT NULL,
    [del_flg]          SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]      DATETIMEOFFSET (7) NOT NULL,
    [update_date]      DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([tax_rule_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'課税規則情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'課税規則ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'tax_rule_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'国ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'country_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'pref_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'product_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品規格ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'product_class_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'課税規則',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'calc_rule'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'税率',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'tax_rate'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'税額調整',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'tax_adjust'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'適用日',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'apply_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'member_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_tax_rule',
    @level2type = N'COLUMN',
    @level2name = N'update_date'