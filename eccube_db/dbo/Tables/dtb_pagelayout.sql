CREATE TABLE [dbo].[dtb_pagelayout] (
    [device_type_id] INT                NOT NULL,
    [page_id]        INT                NOT NULL,
    [page_name]      NVARCHAR (MAX)     NULL,
    [url]            NVARCHAR (MAX)     NOT NULL,
    [filename]       NVARCHAR (MAX)     NULL,
    [header_chk]     SMALLINT           DEFAULT ((1)) NULL,
    [footer_chk]     SMALLINT           DEFAULT ((1)) NULL,
    [edit_flg]       SMALLINT           DEFAULT ((1)) NULL,
    [author]         NVARCHAR (MAX)     NULL,
    [description]    NVARCHAR (MAX)     NULL,
    [keyword]        NVARCHAR (MAX)     NULL,
    [update_url]     NVARCHAR (MAX)     NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    [meta_robots]    NVARCHAR (MAX)     NULL,
    PRIMARY KEY CLUSTERED ([device_type_id] ASC, [page_id] ASC)
);

