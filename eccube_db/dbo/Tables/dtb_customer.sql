CREATE TABLE [dbo].[dtb_customer] (
    [customer_id]     INT                NOT NULL,
    [name01]          NVARCHAR (MAX)     NOT NULL,
    [name02]          NVARCHAR (MAX)     NOT NULL,
    [kana01]          NVARCHAR (MAX)     NULL,
    [kana02]          NVARCHAR (MAX)     NULL,
    [company_name]    NVARCHAR (MAX)     NULL,
    [zip01]           NVARCHAR (MAX)     NULL,
    [zip02]           NVARCHAR (MAX)     NULL,
    [zipcode]         NVARCHAR (MAX)     NULL,
    [country_id]      INT                NULL,
    [pref]            SMALLINT           NULL,
    [addr01]          NVARCHAR (MAX)     NULL,
    [addr02]          NVARCHAR (MAX)     NULL,
    [email]           NVARCHAR (MAX)     NOT NULL,
    [email_mobile]    NVARCHAR (MAX)     NULL,
    [tel01]           NVARCHAR (MAX)     NULL,
    [tel02]           NVARCHAR (MAX)     NULL,
    [tel03]           NVARCHAR (MAX)     NULL,
    [fax01]           NVARCHAR (MAX)     NULL,
    [fax02]           NVARCHAR (MAX)     NULL,
    [fax03]           NVARCHAR (MAX)     NULL,
    [sex]             SMALLINT           NULL,
    [job]             SMALLINT           NULL,
    [birth]           DATETIMEOFFSET (7) NULL,
    [password]        NVARCHAR (MAX)     NULL,
    [reminder]        SMALLINT           NULL,
    [reminder_answer] NVARCHAR (MAX)     NULL,
    [salt]            NVARCHAR (MAX)     NULL,
    [secret_key]      VARCHAR (64)       NOT NULL,
    [first_buy_date]  DATETIMEOFFSET (7) NULL,
    [last_buy_date]   DATETIMEOFFSET (7) NULL,
    [buy_times]       NUMERIC (9)        DEFAULT ((0)) NULL,
    [buy_total]       NUMERIC (9)        DEFAULT ((0)) NULL,
    [point]           NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [note]            NVARCHAR (MAX)     NULL,
    [status]          SMALLINT           DEFAULT ((1)) NOT NULL,
    [create_date]     DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]     DATETIMEOFFSET (7) NOT NULL,
    [del_flg]         SMALLINT           DEFAULT ((0)) NOT NULL,
    [mobile_phone_id] NVARCHAR (MAX)     NULL,
    [mailmaga_flg]    SMALLINT           NULL,
    PRIMARY KEY CLUSTERED ([customer_id] ASC),
    CONSTRAINT [FK_dtb_customer_mtb_pref] FOREIGN KEY ([pref]) REFERENCES [dbo].[mtb_pref] ([id]),
    CONSTRAINT [FK_dtb_customer_mtb_sex] FOREIGN KEY ([sex]) REFERENCES [dbo].[mtb_sex] ([id]),
    UNIQUE NONCLUSTERED ([secret_key] ASC)
);


GO
ALTER TABLE [dbo].[dtb_customer] NOCHECK CONSTRAINT [FK_dtb_customer_mtb_pref];


GO
ALTER TABLE [dbo].[dtb_customer] NOCHECK CONSTRAINT [FK_dtb_customer_mtb_sex];


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会員ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'customer_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'name01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'name02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'姓(カナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'kana01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'名(カナ)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'kana02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会社名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'company_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(4桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'zip01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号(3桁)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'zip02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'zipcode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'国ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'country_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'pref'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'addr01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'住所2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'addr02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メールアドレス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'email'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メールアドレス(携帯)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'email_mobile'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'tel01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'tel02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'電話番号(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'tel03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市外局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'fax01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(市内局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'fax02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FAX(局番)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'fax03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'性別',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'sex'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N' 職業',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'job'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'生年月日',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'birth'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'パスワード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'password'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'質問',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'reminder'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'答え',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'reminder_answer'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'暗号化ソルト',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'salt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'シークレットキー',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'secret_key'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'初回購入日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'first_buy_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最終購入日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'last_buy_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'購入回数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'buy_times'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'購入金額合計',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'buy_total'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'保有ポイント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'point'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'備考',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'note'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ステータス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'携帯端末ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'mobile_phone_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メルマガフラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_customer',
    @level2type = N'COLUMN',
    @level2name = N'mailmaga_flg'