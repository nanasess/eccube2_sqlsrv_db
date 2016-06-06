CREATE TABLE [dbo].[dtb_review] (
    [review_id]       INT                NOT NULL,
    [product_id]      INT                NOT NULL,
    [reviewer_name]   NVARCHAR (MAX)     NOT NULL,
    [reviewer_url]    NVARCHAR (MAX)     NULL,
    [sex]             SMALLINT           NULL,
    [customer_id]     INT                NULL,
    [recommend_level] SMALLINT           NOT NULL,
    [title]           NVARCHAR (MAX)     NOT NULL,
    [comment]         NVARCHAR (MAX)     NOT NULL,
    [status]          SMALLINT           DEFAULT ((2)) NULL,
    [creator_id]      INT                NOT NULL,
    [create_date]     DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]     DATETIMEOFFSET (7) NOT NULL,
    [del_flg]         SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([review_id] ASC)
);

