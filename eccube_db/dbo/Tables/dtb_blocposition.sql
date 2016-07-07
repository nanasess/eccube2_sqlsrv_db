CREATE TABLE dtb_blocposition (
    device_type_id int NOT NULL,
    page_id int NOT NULL,
    target_id int NOT NULL,
    bloc_id int NOT NULL,
    bloc_row int,
    anywhere smallint DEFAULT 0 NOT NULL,
    PRIMARY KEY (device_type_id, page_id, target_id, bloc_id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ブロック配置',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_blocposition',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'デバイス種別ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_blocposition',
    @level2type = N'COLUMN',
    @level2name = N'device_type_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ページID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_blocposition',
    @level2type = N'COLUMN',
    @level2name = N'page_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ターゲットID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_blocposition',
    @level2type = N'COLUMN',
    @level2name = N'target_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ブロックID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_blocposition',
    @level2type = N'COLUMN',
    @level2name = N'bloc_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ブロック行番',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_blocposition',
    @level2type = N'COLUMN',
    @level2name = N'bloc_row'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'全て表示',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_blocposition',
    @level2type = N'COLUMN',
    @level2name = N'anywhere'
