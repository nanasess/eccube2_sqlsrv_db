CREATE TABLE [dbo].[dtb_module_update_logs] (
    [log_id]      INT                NOT NULL,
    [module_id]   INT                NOT NULL,
    [buckup_path] NVARCHAR (MAX)     NULL,
    [error_flg]   SMALLINT           DEFAULT ((0)) NULL,
    [error]       NVARCHAR (MAX)     NULL,
    [ok]          NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([log_id] ASC)
);

