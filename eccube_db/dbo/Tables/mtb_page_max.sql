﻿CREATE TABLE mtb_page_max (
    id smallint,
    name nvarchar(max),
    rank smallint NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'最大ページ数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_page_max',
    @level2type = NULL,
    @level2name = NULL
