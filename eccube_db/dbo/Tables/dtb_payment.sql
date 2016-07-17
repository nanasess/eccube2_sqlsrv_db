CREATE TABLE [dbo].[dtb_payment] (
    [payment_id]     INT                NOT NULL,
    [payment_method] NVARCHAR (256)     NULL,
    [charge]         NUMERIC (9)        NULL,
    [rule_max]       NUMERIC (9)        NULL,
    [rank]           INT                NULL,
    [note]           NVARCHAR (MAX)     NULL,
    [fix]            SMALLINT           NULL,
    [status]         SMALLINT           DEFAULT ((1)) NOT NULL,
    [del_flg]        SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]     INT                NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    [payment_image]  NVARCHAR (4000)     NULL,
    [upper_rule]     NUMERIC (9)        NULL,
    [charge_flg]     SMALLINT           DEFAULT ((1)) NULL,
    [rule_min]       NUMERIC (9)        NULL,
    [upper_rule_max] NUMERIC (9)        NULL,
    [module_id]      INT                NULL,
    [module_path]    NVARCHAR (4000)     NULL,
    [memo01]         NVARCHAR (MAX)     NULL,
    [memo02]         NVARCHAR (MAX)     NULL,
    [memo03]         NVARCHAR (MAX)     NULL,
    [memo04]         NVARCHAR (MAX)     NULL,
    [memo05]         NVARCHAR (MAX)     NULL,
    [memo06]         NVARCHAR (MAX)     NULL,
    [memo07]         NVARCHAR (MAX)     NULL,
    [memo08]         NVARCHAR (MAX)     NULL,
    [memo09]         NVARCHAR (MAX)     NULL,
    [memo10]         NVARCHAR (MAX)     NULL,
    PRIMARY KEY CLUSTERED ([payment_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'支払方法情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'支払い方法ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'payment_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'支払い方法',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'payment_method'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'手数料',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'charge'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'利用条件(円以上)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'rule_max'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'並び順',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'備考',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'note'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'fix',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'fix'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ステータス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ロゴ画像',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'payment_image'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'利用条件(円以下)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'upper_rule'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'手数料フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'charge_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'利用条件(円以上の下限)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'rule_min'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'モジュールID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'module_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'モジュールパス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'module_path'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ01',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo01'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ02',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo02'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ03',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo03'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ04',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo04'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ05',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo05'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ06',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo06'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ07',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo07'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ08',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo08'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ09',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo09'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メモ10',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'memo10'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'利用条件(円以下の上限)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment',
    @level2type = N'COLUMN',
    @level2name = N'upper_rule_max'
