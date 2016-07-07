CREATE TABLE dtb_ownersstore_settings (
    public_key varchar(64)
    PRIMARY KEY(public_key)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'オーナーズストア設定',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_ownersstore_settings',
    @level2type = NULL,
    @level2name = NULL
