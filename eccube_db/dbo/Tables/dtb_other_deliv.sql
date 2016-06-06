CREATE TABLE [dbo].[dtb_other_deliv] (
    [other_deliv_id] INT            NOT NULL,
    [customer_id]    INT            NOT NULL,
    [name01]         NVARCHAR (MAX) NULL,
    [name02]         NVARCHAR (MAX) NULL,
    [kana01]         NVARCHAR (MAX) NULL,
    [kana02]         NVARCHAR (MAX) NULL,
    [company_name]   NVARCHAR (MAX) NULL,
    [zip01]          NVARCHAR (MAX) NULL,
    [zip02]          NVARCHAR (MAX) NULL,
    [zipcode]        NVARCHAR (MAX) NULL,
    [country_id]     INT            NULL,
    [pref]           SMALLINT       NULL,
    [addr01]         NVARCHAR (MAX) NULL,
    [addr02]         NVARCHAR (MAX) NULL,
    [tel01]          NVARCHAR (MAX) NULL,
    [tel02]          NVARCHAR (MAX) NULL,
    [tel03]          NVARCHAR (MAX) NULL,
    [fax01]          NVARCHAR (MAX) NULL,
    [fax02]          NVARCHAR (MAX) NULL,
    [fax03]          NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([other_deliv_id] ASC),
    CONSTRAINT [FK_dtb_other_deliv_dtb_customer] FOREIGN KEY ([customer_id]) REFERENCES [dbo].[dtb_customer] ([customer_id])
);


GO
ALTER TABLE [dbo].[dtb_other_deliv] NOCHECK CONSTRAINT [FK_dtb_other_deliv_dtb_customer];

