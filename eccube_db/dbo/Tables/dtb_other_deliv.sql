CREATE TABLE [dbo].[dtb_other_deliv] (
    [other_deliv_id] INT            NOT NULL,
    [customer_id]    INT            NOT NULL,
    [name01]         NVARCHAR (256) NULL,
    [name02]         NVARCHAR (256) NULL,
    [kana01]         NVARCHAR (256) NULL,
    [kana02]         NVARCHAR (256) NULL,
    [company_name]   NVARCHAR (256) NULL,
    [zip01]          NVARCHAR (256) NULL,
    [zip02]          NVARCHAR (256) NULL,
    [zipcode]        NVARCHAR (256) NULL,
    [country_id]     INT            NULL,
    [pref]           SMALLINT       NULL,
    [addr01]         NVARCHAR (256) NULL,
    [addr02]         NVARCHAR (256) NULL,
    [tel01]          NVARCHAR (256) NULL,
    [tel02]          NVARCHAR (256) NULL,
    [tel03]          NVARCHAR (256) NULL,
    [fax01]          NVARCHAR (256) NULL,
    [fax02]          NVARCHAR (256) NULL,
    [fax03]          NVARCHAR (256) NULL,
    PRIMARY KEY CLUSTERED ([other_deliv_id] ASC),
    CONSTRAINT [FK_dtb_other_deliv_dtb_customer] FOREIGN KEY ([customer_id]) REFERENCES [dbo].[dtb_customer] ([customer_id])
);


GO
ALTER TABLE [dbo].[dtb_other_deliv] NOCHECK CONSTRAINT [FK_dtb_other_deliv_dtb_customer];


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'その他のお届け先',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'お届け先ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'other_deliv_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会員ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'customer_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'name01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'name02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓(カナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'kana01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名(カナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'kana02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会社名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'company_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(4桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'zip01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(3桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'zip02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'zipcode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'国ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'country_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'pref'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'addr01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'addr02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'tel01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'tel02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'tel03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'fax01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'fax02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_other_deliv',
    @level2type = N'COLUMN',
    @level2name = N'fax03'
