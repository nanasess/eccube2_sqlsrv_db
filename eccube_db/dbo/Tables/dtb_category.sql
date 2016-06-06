CREATE TABLE [dbo].[dtb_category] (
    [category_id]        INT                NOT NULL,
    [category_name]      NVARCHAR (MAX)     NULL,
    [parent_category_id] INT                DEFAULT ((0)) NOT NULL,
    [level]              INT                NOT NULL,
    [rank]               INT                NULL,
    [creator_id]         INT                NOT NULL,
    [create_date]        DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]        DATETIMEOFFSET (7) NOT NULL,
    [del_flg]            SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([category_id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [dtb_category_rank_idx]
    ON [dbo].[dtb_category]([rank] ASC)
    INCLUDE([category_id]);

