﻿CREATE TABLE mtb_constants (
    id varchar(64),
    name nvarchar(max),
    rank smallint NOT NULL DEFAULT 0,
    remarks nvarchar(max),
    PRIMARY KEY (id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'定数情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'mtb_constants',
    @level2type = NULL,
    @level2name = NULL
