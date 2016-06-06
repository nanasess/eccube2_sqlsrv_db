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

