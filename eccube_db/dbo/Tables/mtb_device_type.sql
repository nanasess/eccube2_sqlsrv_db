CREATE TABLE mtb_device_type (
    id smallint,
    name nvarchar(max),
    rank smallint NOT NULL,
    PRIMARY KEY (id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'デバイス種別',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_device_type',
    @level2type = NULL,
    @level2name = NULL
