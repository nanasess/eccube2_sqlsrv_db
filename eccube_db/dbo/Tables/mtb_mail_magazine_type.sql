CREATE TABLE mtb_mail_magazine_type (
    id smallint,
    name nvarchar(256),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メルマガ種別',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_mail_magazine_type',
    @level2type = NULL,
    @level2name = NULL
