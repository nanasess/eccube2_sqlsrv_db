CREATE TABLE [dbo].[dtb_session] (
    [sess_id]     VARCHAR (64)       NOT NULL,
    [sess_data]   NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([sess_id] ASC)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'セッション情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_session',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'セッションID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_session',
    @level2type = N'COLUMN',
    @level2name = N'sess_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'データ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_session',
    @level2type = N'COLUMN',
    @level2name = N'sess_data'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_session',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_session',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
