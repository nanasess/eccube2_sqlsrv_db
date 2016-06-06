CREATE TABLE [dbo].[dtb_customer] (
    [customer_id]     INT                NOT NULL,
    [name01]          NVARCHAR (MAX)     NOT NULL,
    [name02]          NVARCHAR (MAX)     NOT NULL,
    [kana01]          NVARCHAR (MAX)     NULL,
    [kana02]          NVARCHAR (MAX)     NULL,
    [company_name]    NVARCHAR (MAX)     NULL,
    [zip01]           NVARCHAR (MAX)     NULL,
    [zip02]           NVARCHAR (MAX)     NULL,
    [zipcode]         NVARCHAR (MAX)     NULL,
    [country_id]      INT                NULL,
    [pref]            SMALLINT           NULL,
    [addr01]          NVARCHAR (MAX)     NULL,
    [addr02]          NVARCHAR (MAX)     NULL,
    [email]           NVARCHAR (MAX)     NOT NULL,
    [email_mobile]    NVARCHAR (MAX)     NULL,
    [tel01]           NVARCHAR (MAX)     NULL,
    [tel02]           NVARCHAR (MAX)     NULL,
    [tel03]           NVARCHAR (MAX)     NULL,
    [fax01]           NVARCHAR (MAX)     NULL,
    [fax02]           NVARCHAR (MAX)     NULL,
    [fax03]           NVARCHAR (MAX)     NULL,
    [sex]             SMALLINT           NULL,
    [job]             SMALLINT           NULL,
    [birth]           DATETIMEOFFSET (7) NULL,
    [password]        NVARCHAR (MAX)     NULL,
    [reminder]        SMALLINT           NULL,
    [reminder_answer] NVARCHAR (MAX)     NULL,
    [salt]            NVARCHAR (MAX)     NULL,
    [secret_key]      VARCHAR (64)       NOT NULL,
    [first_buy_date]  DATETIMEOFFSET (7) NULL,
    [last_buy_date]   DATETIMEOFFSET (7) NULL,
    [buy_times]       NUMERIC (9)        DEFAULT ((0)) NULL,
    [buy_total]       NUMERIC (9)        DEFAULT ((0)) NULL,
    [point]           NUMERIC (9)        DEFAULT ((0)) NOT NULL,
    [note]            NVARCHAR (MAX)     NULL,
    [status]          SMALLINT           DEFAULT ((1)) NOT NULL,
    [create_date]     DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]     DATETIMEOFFSET (7) NOT NULL,
    [del_flg]         SMALLINT           DEFAULT ((0)) NOT NULL,
    [mobile_phone_id] NVARCHAR (MAX)     NULL,
    [mailmaga_flg]    SMALLINT           NULL,
    PRIMARY KEY CLUSTERED ([customer_id] ASC),
    CONSTRAINT [FK_dtb_customer_mtb_pref] FOREIGN KEY ([pref]) REFERENCES [dbo].[mtb_pref] ([id]),
    CONSTRAINT [FK_dtb_customer_mtb_sex] FOREIGN KEY ([sex]) REFERENCES [dbo].[mtb_sex] ([id]),
    UNIQUE NONCLUSTERED ([secret_key] ASC)
);


GO
ALTER TABLE [dbo].[dtb_customer] NOCHECK CONSTRAINT [FK_dtb_customer_mtb_pref];


GO
ALTER TABLE [dbo].[dtb_customer] NOCHECK CONSTRAINT [FK_dtb_customer_mtb_sex];

