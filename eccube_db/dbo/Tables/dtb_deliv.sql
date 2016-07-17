CREATE TABLE [dbo].[dtb_deliv] (
    [deliv_id]        INT                NOT NULL,
    [product_type_id] INT                NULL,
    [name]            NVARCHAR (256)     NULL,
    [service_name]    NVARCHAR (256)     NULL,
    [remark]          NVARCHAR (MAX)     NULL,
    [confirm_url]     NVARCHAR (4000)     NULL,
    [rank]            INT                NULL,
    [status]          SMALLINT           DEFAULT ((1)) NOT NULL,
    [del_flg]         SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]      INT                NOT NULL,
    [create_date]     DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]     DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([deliv_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送業者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送業者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'deliv_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品種別ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'product_type_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送業者名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送サービス名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'service_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'備考',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'remark'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'伝票確認URL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'confirm_url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'順番',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ステータス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_deliv',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
