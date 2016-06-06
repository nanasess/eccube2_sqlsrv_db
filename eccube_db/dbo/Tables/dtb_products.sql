CREATE TABLE [dbo].[dtb_products] (
    [product_id]        INT                NOT NULL,
    [name]              NVARCHAR (MAX)     NOT NULL,
    [maker_id]          INT                NULL,
    [status]            SMALLINT           DEFAULT ((2)) NOT NULL,
    [comment1]          NVARCHAR (MAX)     NULL,
    [comment2]          NVARCHAR (MAX)     NULL,
    [comment3]          NVARCHAR (MAX)     NULL,
    [comment4]          NVARCHAR (MAX)     NULL,
    [comment5]          NVARCHAR (MAX)     NULL,
    [comment6]          NVARCHAR (MAX)     NULL,
    [note]              NVARCHAR (MAX)     NULL,
    [main_list_comment] NVARCHAR (MAX)     NULL,
    [main_list_image]   NVARCHAR (MAX)     NULL,
    [main_comment]      NVARCHAR (MAX)     NULL,
    [main_image]        NVARCHAR (MAX)     NULL,
    [main_large_image]  NVARCHAR (MAX)     NULL,
    [sub_title1]        NVARCHAR (MAX)     NULL,
    [sub_comment1]      NVARCHAR (MAX)     NULL,
    [sub_image1]        NVARCHAR (MAX)     NULL,
    [sub_large_image1]  NVARCHAR (MAX)     NULL,
    [sub_title2]        NVARCHAR (MAX)     NULL,
    [sub_comment2]      NVARCHAR (MAX)     NULL,
    [sub_image2]        NVARCHAR (MAX)     NULL,
    [sub_large_image2]  NVARCHAR (MAX)     NULL,
    [sub_title3]        NVARCHAR (MAX)     NULL,
    [sub_comment3]      NVARCHAR (MAX)     NULL,
    [sub_image3]        NVARCHAR (MAX)     NULL,
    [sub_large_image3]  NVARCHAR (MAX)     NULL,
    [sub_title4]        NVARCHAR (MAX)     NULL,
    [sub_comment4]      NVARCHAR (MAX)     NULL,
    [sub_image4]        NVARCHAR (MAX)     NULL,
    [sub_large_image4]  NVARCHAR (MAX)     NULL,
    [sub_title5]        NVARCHAR (MAX)     NULL,
    [sub_comment5]      NVARCHAR (MAX)     NULL,
    [sub_image5]        NVARCHAR (MAX)     NULL,
    [sub_large_image5]  NVARCHAR (MAX)     NULL,
    [sub_title6]        NVARCHAR (MAX)     NULL,
    [sub_comment6]      NVARCHAR (MAX)     NULL,
    [sub_image6]        NVARCHAR (MAX)     NULL,
    [sub_large_image6]  NVARCHAR (MAX)     NULL,
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

