CREATE TABLE [dbo].[dtb_module] (
    [module_id]       INT                NOT NULL,
    [module_code]     NVARCHAR (MAX)     NOT NULL,
    [module_name]     NVARCHAR (MAX)     NOT NULL,
    [sub_data]        NVARCHAR (MAX)     NULL,
    [auto_update_flg] SMALLINT           DEFAULT ((0)) NOT NULL,
    [del_flg]         SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]     DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]     DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([module_id] ASC),
    UNIQUE NONCLUSTERED ([module_id] ASC)
);

