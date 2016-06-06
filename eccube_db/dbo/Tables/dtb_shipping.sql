CREATE TABLE [dbo].[dtb_shipping] (
    [shipping_id]           INT                NOT NULL,
    [order_id]              INT                NOT NULL,
    [shipping_name01]       NVARCHAR (MAX)     NULL,
    [shipping_name02]       NVARCHAR (MAX)     NULL,
    [shipping_kana01]       NVARCHAR (MAX)     NULL,
    [shipping_kana02]       NVARCHAR (MAX)     NULL,
    [shipping_company_name] NVARCHAR (MAX)     NULL,
    [shipping_tel01]        NVARCHAR (MAX)     NULL,
    [shipping_tel02]        NVARCHAR (MAX)     NULL,
    [shipping_tel03]        NVARCHAR (MAX)     NULL,
    [shipping_fax01]        NVARCHAR (MAX)     NULL,
    [shipping_fax02]        NVARCHAR (MAX)     NULL,
    [shipping_fax03]        NVARCHAR (MAX)     NULL,
    [shipping_country_id]   INT                NULL,
    [shipping_pref]         SMALLINT           NULL,
    [shipping_zip01]        NVARCHAR (MAX)     NULL,
    [shipping_zip02]        NVARCHAR (MAX)     NULL,
    [shipping_zipcode]      NVARCHAR (MAX)     NULL,
    [shipping_addr01]       NVARCHAR (MAX)     NULL,
    [shipping_addr02]       NVARCHAR (MAX)     NULL,
    [time_id]               INT                NULL,
    [shipping_time]         NVARCHAR (MAX)     NULL,
    [shipping_num]          NVARCHAR (MAX)     NULL,
    [shipping_date]         DATETIMEOFFSET (7) NULL,
    [shipping_commit_date]  DATETIMEOFFSET (7) NULL,
    [rank]                  INT                NULL,
    [create_date]           DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]           DATETIMEOFFSET (7) NOT NULL,
    [del_flg]               SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([shipping_id] ASC, [order_id] ASC),
    CONSTRAINT [FK_dtb_shipping_dtb_order] FOREIGN KEY ([order_id]) REFERENCES [dbo].[dtb_order] ([order_id])
);


GO
ALTER TABLE [dbo].[dtb_shipping] NOCHECK CONSTRAINT [FK_dtb_shipping_dtb_order];

