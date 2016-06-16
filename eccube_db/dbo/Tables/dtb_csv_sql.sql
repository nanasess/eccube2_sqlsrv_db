CREATE TABLE [dbo].[dtb_csv_sql] (
    [sql_id]      INT                NOT NULL,
    [sql_name]    NVARCHAR (MAX)     NOT NULL,
    [csv_sql]     NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([sql_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'SQL ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv_sql',
    @level2type = N'COLUMN',
    @level2name = N'sql_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'SQL 名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv_sql',
    @level2type = N'COLUMN',
    @level2name = N'sql_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'SQL文',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv_sql',
    @level2type = N'COLUMN',
    @level2name = N'csv_sql'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv_sql',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_csv_sql',
    @level2type = N'COLUMN',
    @level2name = N'update_date'