﻿CREATE TABLE mtb_pref (
    id smallint,
    name nvarchar(max),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_pref',
    @level2type = NULL,
    @level2name = NULL
