CREATE TABLE [dbo].[dtb_shipping] (
    [shipping_id]           INT                NOT NULL,
    [order_id]              INT                NOT NULL,
    [shipping_name01]       NVARCHAR (MAX)     NULL,
    [shipping_name02]       NVARCHAR (MAX)     NULL,
    [shipping_kana01]       NVARCHAR (MAX)     NULL,
    [shipping_kana02]       NVARCHAR (MAX)     NULL,
    [shipping_company_name] NVARCHAR (MAX)     NULL,
    [shipping_tel01]        NVARCHAR (MAX)     NULL,
    [shipping_tel02]        NVARCHAR (MAX)     NULL,
    [shipping_tel03]        NVARCHAR (MAX)     NULL,
    [shipping_fax01]        NVARCHAR (MAX)     NULL,
    [shipping_fax02]        NVARCHAR (MAX)     NULL,
    [shipping_fax03]        NVARCHAR (MAX)     NULL,
    [shipping_country_id]   INT                NULL,
    [shipping_pref]         SMALLINT           NULL,
    [shipping_zip01]        NVARCHAR (MAX)     NULL,
    [shipping_zip02]        NVARCHAR (MAX)     NULL,
    [shipping_zipcode]      NVARCHAR (MAX)     NULL,
    [shipping_addr01]       NVARCHAR (MAX)     NULL,
    [shipping_addr02]       NVARCHAR (MAX)     NULL,
    [time_id]               INT                NULL,
    [shipping_time]         NVARCHAR (MAX)     NULL,
    [shipping_num]          NVARCHAR (MAX)     NULL,
    [shipping_date]         DATETIMEOFFSET (7) NULL,
    [shipping_commit_date]  DATETIMEOFFSET (7) NULL,
    [rank]                  INT                NULL,
    [create_date]           DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]           DATETIMEOFFSET (7) NOT NULL,
    [del_flg]               SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([shipping_id] ASC, [order_id] ASC),
    CONSTRAINT [FK_dtb_shipping_dtb_order] FOREIGN KEY ([order_id]) REFERENCES [dbo].[dtb_order] ([order_id])
);


GO
ALTER TABLE [dbo].[dtb_shipping] NOCHECK CONSTRAINT [FK_dtb_shipping_dtb_order];

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送先情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'受注ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'order_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_name01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_name02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓(カナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_kana01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名(カナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_kana02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会社名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_company_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_tel01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_tel02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_tel03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_fax01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_fax02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_fax03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'国ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_country_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_pref'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(3桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_zip01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(4桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_zip02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_zipcode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_addr01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_addr02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'お届け時間ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'time_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'お届け時間',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_time'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'伝票番号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_num'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'お届け予定日',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'発送日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'shipping_commit_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'順序',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_shipping',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'