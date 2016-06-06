CREATE TABLE [dbo].[dtb_api_config] (
    [api_config_id]         INT                NOT NULL,
    [operation_name]        NVARCHAR (MAX)     NOT NULL,
    [operation_description] NVARCHAR (MAX)     NULL,
    [auth_types]            NVARCHAR (MAX)     NOT NULL,
    [enable]                SMALLINT           DEFAULT ((0)) NOT NULL,
    [is_log]                SMALLINT           DEFAULT ((0)) NOT NULL,
    [sub_data]              NVARCHAR (MAX)     NULL,
    [del_flg]               SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]           DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]           DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([api_config_id] ASC)
);

