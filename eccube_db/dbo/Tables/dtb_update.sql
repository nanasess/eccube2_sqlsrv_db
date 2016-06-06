CREATE TABLE [dbo].[dtb_update] (
    [module_id]      INT                NOT NULL,
    [module_name]    NVARCHAR (MAX)     NOT NULL,
    [now_version]    NVARCHAR (MAX)     NULL,
    [latest_version] NVARCHAR (MAX)     NOT NULL,
    [module_explain] NVARCHAR (MAX)     NULL,
    [main_php]       NVARCHAR (MAX)     NOT NULL,
    [extern_php]     NVARCHAR (MAX)     NOT NULL,
    [install_sql]    NVARCHAR (MAX)     NULL,
    [uninstall_sql]  NVARCHAR (MAX)     NULL,
    [other_files]    NVARCHAR (MAX)     NULL,
    [del_flg]        SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    [release_date]   DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([module_id] ASC)
);

