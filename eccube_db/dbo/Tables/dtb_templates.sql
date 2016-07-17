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
    @level1name = N'dtb_templates',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'テンプレートコード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_templates',
    @level2type = N'COLUMN',
    @level2name = N'template_code'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'デバイス種別ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_templates',
    @level2type = N'COLUMN',
    @level2name = N'device_type_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'テンプレート名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_templates',
    @level2type = N'COLUMN',
    @level2name = N'template_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_templates',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_templates',
    @level2type = N'COLUMN',
    @level2name = N'update_date'