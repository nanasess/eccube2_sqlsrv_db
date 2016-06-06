CREATE TABLE [dbo].[dtb_plugin_hookpoint] (
    [plugin_hookpoint_id] INT                NOT NULL,
    [plugin_id]           INT                NOT NULL,
    [callback]            NVARCHAR (MAX)     NULL,
    [use_flg]             SMALLINT           DEFAULT ((1)) NOT NULL,
    [hook_point]          NVARCHAR (MAX)     NOT NULL,
    [create_date]         DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]         DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([plugin_hookpoint_id] ASC)
);

