CREATE TABLE [dbo].[dtb_best_products] (
    [best_id]     INT                NOT NULL,
    [category_id] INT                NOT NULL,
    [rank]        INT                DEFAULT ((0)) NOT NULL,
    [product_id]  INT                NOT NULL,
    [title]       NVARCHAR (MAX)     NULL,
    [comment]     NVARCHAR (MAX)     NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([best_id] ASC)
);

