CREATE TABLE [dbo].[dtb_order_temp] (
    [order_temp_id]      VARCHAR (32)       NOT NULL,
    [customer_id]        INT                NOT NULL,
    [message]            NVARCHAR (MAX)     NULL,
    [order_name01]       NVARCHAR (MAX)     NULL,
    [order_name02]       NVARCHAR (MAX)     NULL,
    [order_kana01]       NVARCHAR (MAX)     NULL,
    [order_kana02]       NVARCHAR (MAX)     NULL,
    [order_company_name] NVARCHAR (MAX)     NULL,
    [order_email]        NVARCHAR (MAX)     NULL,
    [order_tel01]        NVARCHAR (MAX)     NULL,
    [order_tel02]        NVARCHAR (MAX)     NULL,
    [order_tel03]        NVARCHAR (MAX)     NULL,
    [order_fax01]        NVARCHAR (MAX)     NULL,
    [order_fax02]        NVARCHAR (MAX)     NULL,
    [order_fax03]        NVARCHAR (MAX)     NULL,
    [order_zip01]        NVARCHAR (MAX)     NULL,
    [order_zip02]        NVARCHAR (MAX)     NULL,
    [order_zipcode]      NVARCHAR (MAX)     NULL,
    [order_country_id]   INT                NULL,
    [order_pref]         SMALLINT           NULL,
    [order_addr01]       NVARCHAR (MAX)     NULL,
    [order_addr02]       NVARCHAR (MAX)     NULL,
    [order_sex]          SMALLINT           NULL,
    [order_birth]        DATETIMEOFFSET (7) NULL,
    [order_job]          INT                NULL,
    [subtotal]           NUMERIC (9)        NULL,
    [discount]           NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [deliv_id]           INT                NULL,
    [deliv_fee]          NUMERIC (9)        NULL,
    [charge]             NUMERIC (9)        NULL,
    [use_point]          NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [add_point]          NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [birth_point]        NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [tax]                NUMERIC (9)        NULL,
    [total]              NUMERIC (9)        NULL,
    [payment_total]      NUMERIC (9)        NULL,
    [payment_id]         INT                NULL,
    [payment_method]     NVARCHAR (MAX)     NULL,
    [note]               NVARCHAR (MAX)     NULL,
    [mail_flag]          SMALLINT           NULL,
    [status]             SMALLINT           NULL,
    [deliv_check]        SMALLINT           NULL,
    [point_check]        SMALLINT           NULL,
    [create_date]        DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]        DATETIMEOFFSET (7) NOT NULL,
    [device_type_id]     INT                NULL,
    [del_flg]            SMALLINT           DEFAULT ((0)) NOT NULL,
    [order_id]           INT                NULL,
    [memo01]             NVARCHAR (MAX)     NULL,
    [memo02]             NVARCHAR (MAX)     NULL,
    [memo03]             NVARCHAR (MAX)     NULL,
    [memo04]             NVARCHAR (MAX)     NULL,
    [memo05]             NVARCHAR (MAX)     NULL,
    [memo06]             NVARCHAR (MAX)     NULL,
    [memo07]             NVARCHAR (MAX)     NULL,
    [memo08]             NVARCHAR (MAX)     NULL,
    [memo09]             NVARCHAR (MAX)     NULL,
    [memo10]             NVARCHAR (MAX)     NULL,
    [session]            NVARCHAR (MAX)     NULL,
    PRIMARY KEY CLUSTERED ([order_temp_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'受注一時ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_temp_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ユーザーID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'customer_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メッセージ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'message'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_name01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_name02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓(カナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_kana01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名(カナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_kana02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会社名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_company_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メールアドレス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_email'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_tel01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_tel02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_tel03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市街局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_fax01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_fax02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_fax03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(4桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_zip01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(3桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_zip02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_zipcode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'国ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_country_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_pref'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_addr01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_addr02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'性別',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_sex'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'生年月日',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_birth'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'職業',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_job'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'小計',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'subtotal'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'値引',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'discount'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送業者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'deliv_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送料',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'deliv_fee'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'手数料',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'charge'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'利用ポイント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'use_point'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'加算ポイント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'add_point'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'誕生日ポイント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'birth_point'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'税額',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'tax'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'合計',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'total'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'お支払金額',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'payment_total'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'支払い方法ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'payment_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'支払い方法',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'payment_method'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'備考',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'note'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メールフラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'mail_flag'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ステータス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送チェック',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'deliv_check'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ポイントチェック',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'point_check'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'デバイス種別ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'device_type_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'受注ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'order_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ01',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ02',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ03',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ04',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo04'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ05',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo05'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ06',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo06'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ07',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo07'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ08',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo08'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ09',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo09'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ10',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'memo10'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'セッション',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_order_temp',
    @level2type = N'COLUMN',
    @level2name = N'session'