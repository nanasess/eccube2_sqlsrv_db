CREATE TABLE [dbo].[dtb_templates] (
    [template_code]  VARCHAR (64)       NOT NULL,
    [device_type_id] INT                NOT NULL,
    [template_name]  NVARCHAR (MAX)     NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([template_code] ASC)
);

