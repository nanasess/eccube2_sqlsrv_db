CREATE TABLE [dbo].[dtb_update] (
    [module_id]      INT                NOT NULL,
    [module_name]    NVARCHAR (4000)     NOT NULL,
    [now_version]    NVARCHAR (4000)     NULL,
    [latest_version] NVARCHAR (4000)     NOT NULL,
    [module_explain] NVARCHAR (4000)     NULL,
    [main_php]       NVARCHAR (4000)     NOT NULL,
    [extern_php]     NVARCHAR (4000)     NOT NULL,
    [install_sql]    NVARCHAR (4000)     NULL,
    [uninstall_sql]  NVARCHAR (4000)     NULL,
    [other_files]    NVARCHAR (4000)     NULL,
    [del_flg]        SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    [release_date]   DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([module_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'(未使用)アップデート情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_update',
    @level2type = NULL,
    @level2name = NULL
