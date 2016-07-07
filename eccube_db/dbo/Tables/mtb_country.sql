CREATE TABLE mtb_country (
    id int,
    name nvarchar(max),
    rank int NOT NULL,
    PRIMARY KEY (id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'国情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_country',
    @level2type = NULL,
    @level2name = NULL
