CREATE TABLE mtb_zip (
    zip_id int,
    zipcode nvarchar(256),
    state nvarchar(256),
    city nvarchar(256),
    town nvarchar(256),
    PRIMARY KEY(zip_id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_zip',
    @level2type = N'COLUMN',
    @level2name = N'zip_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号マスタ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_zip',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_zip',
    @level2type = N'COLUMN',
    @level2name = N'zipcode'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_zip',
    @level2type = N'COLUMN',
    @level2name = N'state'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'市区町村',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_zip',
    @level2type = N'COLUMN',
    @level2name = N'city'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'番地',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_zip',
    @level2type = N'COLUMN',
    @level2name = N'town'
