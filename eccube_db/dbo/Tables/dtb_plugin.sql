CREATE TABLE [dbo].[dtb_plugin] (
    [plugin_id]          INT                NOT NULL,
    [plugin_name]        NVARCHAR (MAX)     NOT NULL,
    [plugin_code]        NVARCHAR (MAX)     NOT NULL,
    [class_name]         NVARCHAR (MAX)     NOT NULL,
    [author]             NVARCHAR (MAX)     NULL,
    [author_site_url]    NVARCHAR (MAX)     NULL,
    [plugin_site_url]    NVARCHAR (MAX)     NULL,
    [plugin_version]     NVARCHAR (MAX)     NULL,
    [compliant_version]  NVARCHAR (MAX)     NULL,
    [plugin_description] NVARCHAR (MAX)     NULL,
    [priority]           INT                DEFAULT ((0)) NOT NULL,
    [enable]             SMALLINT           DEFAULT ((0)) NOT NULL,
    [free_field1]        NVARCHAR (MAX)     NULL,
    [free_field2]        NVARCHAR (MAX)     NULL,
    [free_field3]        NVARCHAR (MAX)     NULL,
    [free_field4]        NVARCHAR (MAX)     NULL,
    [create_date]        DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]        DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([plugin_id] ASC)
);

