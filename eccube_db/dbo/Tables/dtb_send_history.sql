CREATE TABLE [dbo].[dtb_send_history] (
    [send_id]        INT                NOT NULL,
    [mail_method]    SMALLINT           NULL,
    [subject]        NVARCHAR (MAX)     NULL,
    [body]           NVARCHAR (MAX)     NULL,
    [send_count]     INT                NULL,
    [complete_count] INT                DEFAULT ((0)) NOT NULL,
    [start_date]     DATETIMEOFFSET (7) NULL,
    [end_date]       DATETIMEOFFSET (7) NULL,
    [search_data]    NVARCHAR (MAX)     NULL,
    [del_flg]        SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]     INT                NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([send_id] ASC)
);

