CREATE TABLE [dbo].[dtb_bloc] (
    [device_type_id] INT                NOT NULL,
    [bloc_id]        INT                NOT NULL,
    [bloc_name]      NVARCHAR (MAX)     NULL,
    [tpl_path]       NVARCHAR (MAX)     NULL,
    [filename]       VARCHAR (64)       NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    [php_path]       NVARCHAR (MAX)     NULL,
    [deletable_flg]  SMALLINT           DEFAULT ((1)) NOT NULL,
    [plugin_id]      INT                NULL,
    PRIMARY KEY CLUSTERED ([device_type_id] ASC, [bloc_id] ASC),
    UNIQUE NONCLUSTERED ([device_type_id] ASC, [filename] ASC)
);

