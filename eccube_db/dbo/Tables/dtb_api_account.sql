CREATE TABLE [dbo].[dtb_api_account] (
    [api_account_id] INT                NOT NULL,
    [api_access_key] NVARCHAR (MAX)     NOT NULL,
    [api_secret_key] NVARCHAR (MAX)     NOT NULL,
    [enable]         SMALLINT           DEFAULT ((0)) NOT NULL,
    [del_flg]        SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([api_account_id] ASC)
);

