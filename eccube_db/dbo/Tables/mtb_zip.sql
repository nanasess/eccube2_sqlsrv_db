CREATE TABLE mtb_zip (
    zip_id int,
    zipcode nvarchar(max),
    state nvarchar(max),
    city nvarchar(max),
    town nvarchar(max),
    PRIMARY KEY(zip_id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'郵便番号マスタ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_zip',
    @level2type = NULL,
    @level2name = NULL
