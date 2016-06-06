CREATE TABLE [dbo].[dtb_mailmaga_template] (
    [template_id] INT                NOT NULL,
    [subject]     NVARCHAR (MAX)     NULL,
    [mail_method] INT                NULL,
    [body]        NVARCHAR (MAX)     NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([template_id] ASC)
);

