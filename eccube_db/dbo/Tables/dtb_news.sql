CREATE TABLE [dbo].[dtb_news] (
    [news_id]      INT                NOT NULL,
    [news_date]    DATETIMEOFFSET (7) NULL,
    [rank]         INT                NULL,
    [news_title]   NVARCHAR (MAX)     NOT NULL,
    [news_comment] NVARCHAR (MAX)     NULL,
    [news_url]     NVARCHAR (MAX)     NULL,
    [news_select]  SMALLINT           DEFAULT ((0)) NOT NULL,
    [link_method]  NVARCHAR (MAX)     NULL,
    [creator_id]   INT                NOT NULL,
    [create_date]  DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]  DATETIMEOFFSET (7) NOT NULL,
    [del_flg]      SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([news_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'新着情報ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'news_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'公開日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'news_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'表示順',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'rank'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'コメント',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'news_comment'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'タイトル',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'news_title'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'URL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'news_url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'選択',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'news_select'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'リンク方式',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'link_method'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_news',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'