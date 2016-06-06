CREATE TABLE [dbo].[dtb_mailtemplate] (
    [template_id] INT                NOT NULL,
    [subject]     NVARCHAR (MAX)     NULL,
    [header]      NVARCHAR (MAX)     NULL,
    [footer]      NVARCHAR (MAX)     NULL,
    [creator_id]  INT                NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([template_id] ASC)
);

