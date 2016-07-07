CREATE TABLE [dbo].[dtb_templates] (
    [template_code]  VARCHAR (64)       NOT NULL,
    [device_type_id] INT                NOT NULL,
    [template_name]  NVARCHAR (MAX)     NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([template_code] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'テンプレート情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_template',
    @level2type = NULL,
    @level2name = NULL
