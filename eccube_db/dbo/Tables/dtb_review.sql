CREATE TABLE [dbo].[dtb_review] (
    [review_id]       INT                NOT NULL,
    [product_id]      INT                NOT NULL,
    [reviewer_name]   NVARCHAR (256)     NOT NULL,
    [reviewer_url]    NVARCHAR (4000)     NULL,
    [sex]             SMALLINT           NULL,
    [customer_id]     INT                NULL,
    [recommend_level] SMALLINT           NOT NULL,
    [title]           NVARCHAR (256)     NOT NULL,
    [comment]         NVARCHAR (MAX)     NOT NULL,
    [status]          SMALLINT           DEFAULT ((2)) NULL,
    [creator_id]      INT                NOT NULL,
    [create_date]     DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]     DATETIMEOFFSET (7) NOT NULL,
    [del_flg]         SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([review_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'お客様の声',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'レビューID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'review_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'商品ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'product_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'レビュアー名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'reviewer_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'URL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'reviewer_url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'性別',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'sex'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'会員ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'customer_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'レビューレベル',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'recommend_level'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'タイトル',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'title'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コメント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'comment'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ステータス',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'status'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_review',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
