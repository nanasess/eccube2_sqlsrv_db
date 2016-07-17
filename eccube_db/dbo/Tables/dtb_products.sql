CREATE TABLE [dbo].[dtb_products] (
    [product_id]        INT                NOT NULL,
    [name]              NVARCHAR (256)     NOT NULL,
    [maker_id]          INT                NULL,
    [status]            SMALLINT           DEFAULT ((2)) NOT NULL,
    [comment1]          NVARCHAR (4000)     NULL,
    [comment2]          NVARCHAR (4000)     NULL,
    [comment3]          NVARCHAR (4000)     NULL,
    [comment4]          NVARCHAR (4000)     NULL,
    [comment5]          NVARCHAR (4000)     NULL,
    [comment6]          NVARCHAR (4000)     NULL,
    [note]              NVARCHAR (MAX)     NULL,
    [main_list_comment] NVARCHAR (4000)     NULL,
    [main_list_image]   NVARCHAR (4000)     NULL,
    [main_comment]      NVARCHAR (MAX)     NULL,
    [main_image]        NVARCHAR (4000)     NULL,
    [main_large_image]  NVARCHAR (4000)     NULL,
    [sub_title1]        NVARCHAR (256)     NULL,
    [sub_comment1]      NVARCHAR (MAX)     NULL,
    [sub_image1]        NVARCHAR (4000)     NULL,
    [sub_large_image1]  NVARCHAR (4000)     NULL,
    [sub_title2]        NVARCHAR (256)     NULL,
    [sub_comment2]      NVARCHAR (MAX)     NULL,
    [sub_image2]        NVARCHAR (4000)     NULL,
    [sub_large_image2]  NVARCHAR (4000)     NULL,
    [sub_title3]        NVARCHAR (256)     NULL,
    [sub_comment3]      NVARCHAR (MAX)     NULL,
    [sub_image3]        NVARCHAR (4000)     NULL,
    [sub_large_image3]  NVARCHAR (4000)     NULL,
    [sub_title4]        NVARCHAR (256)     NULL,
    [sub_comment4]      NVARCHAR (MAX)     NULL,
    [sub_image4]        NVARCHAR (4000)     NULL,
    [sub_large_image4]  NVARCHAR (4000)     NULL,
    [sub_title5]        NVARCHAR (256)     NULL,
    [sub_comment5]      NVARCHAR (MAX)     NULL,
    [sub_image5]        NVARCHAR (4000)     NULL,
    [sub_large_image5]  NVARCHAR (4000)     NULL,
    [sub_title6]        NVARCHAR (256)     NULL,
    [sub_comment6]      NVARCHAR (MAX)     NULL,
    [sub_image6]        NVARCHAR (4000)     NULL,
    [sub_large_image6]  NVARCHAR (4000)     NULL,
    [del_flg]           SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]        INT                NOT NULL,
    [create_date]       DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]       DATETIMEOFFSET (7) NOT NULL,
    [deliv_date_id]     INT                NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC),
    CONSTRAINT [FK_dtb_products_dtb_maker] FOREIGN KEY ([maker_id]) REFERENCES [dbo].[dtb_maker] ([maker_id])
);


GO
ALTER TABLE [dbo].[dtb_products] NOCHECK CONSTRAINT [FK_dtb_products_dtb_maker];


GO
CREATE NONCLUSTERED INDEX [maker_id_idx]
    ON [dbo].[dtb_products]([maker_id] ASC);


GO
CREATE NONCLUSTERED INDEX [dtb_products_status_del_flg_idx]
    ON [dbo].[dtb_products]([status] ASC, [del_flg] ASC)
    INCLUDE([product_id]);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'product_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メーカーID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'maker_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ステータス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コメント1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'comment1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コメント2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'comment2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コメント3',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'comment3'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コメント4',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'comment4'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コメント5',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'comment5'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コメント6',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'comment6'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'備考',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'note'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'一覧コメント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'main_list_comment'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'一覧画像',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'main_list_image'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メインコメント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'main_comment'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メイン画像',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'main_image'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メイン拡大画像',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'main_large_image'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブタイトル1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_title1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブコメント1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_comment1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ画像1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_image1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ拡大画像1',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_large_image1'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブタイトル2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_title2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブコメント2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_comment2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ画像2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_image2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ拡大画像2',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_large_image2'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブタイトル3',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_title3'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブコメント3',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_comment3'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ画像3',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_image3'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ拡大画像3',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_large_image3'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブタイトル4',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_title4'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブコメント4',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_comment4'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ画像4',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_image4'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ拡大画像4',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_large_image4'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブタイトル5',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_title5'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブコメント5',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_comment5'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ画像5',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_image5'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ拡大画像5',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_large_image5'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブタイトル6',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_title6'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブコメント6',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_comment6'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ画像6',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_image6'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'サブ拡大画像6',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'sub_large_image6'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配達可能日',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_products',
    @level2type = N'COLUMN',
    @level2name = N'deliv_date_id'
