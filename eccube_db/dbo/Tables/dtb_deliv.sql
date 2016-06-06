CREATE TABLE [dbo].[dtb_deliv] (
    [deliv_id]        INT                NOT NULL,
    [product_type_id] INT                NULL,
    [name]            NVARCHAR (MAX)     NULL,
    [service_name]    NVARCHAR (MAX)     NULL,
    [remark]          NVARCHAR (MAX)     NULL,
    [confirm_url]     NVARCHAR (MAX)     NULL,
    [rank]            INT                NULL,
    [status]          SMALLINT           DEFAULT ((1)) NOT NULL,
    [del_flg]         SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]      INT                NOT NULL,
    [create_date]     DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]     DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([deliv_id] ASC)
);

