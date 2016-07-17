CREATE TABLE mtb_taxrule (
    id smallint,
    name nvarchar(256),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'課税規則',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_taxrule',
    @level2type = NULL,
    @level2name = NULL
