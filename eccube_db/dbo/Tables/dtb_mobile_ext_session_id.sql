CREATE TABLE [dbo].[dtb_mobile_ext_session_id] (
    [session_id]  VARCHAR (64)       NOT NULL,
    [param_key]   NVARCHAR (MAX)     NULL,
    [param_value] NVARCHAR (MAX)     NULL,
    [url]         NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([session_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'セッションID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mobile_ext_session_id',
    @level2type = N'COLUMN',
    @level2name = N'session_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'パラメータキー',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mobile_ext_session_id',
    @level2type = N'COLUMN',
    @level2name = N'param_key'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'パラメータ値',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mobile_ext_session_id',
    @level2type = N'COLUMN',
    @level2name = N'param_value'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'URL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mobile_ext_session_id',
    @level2type = N'COLUMN',
    @level2name = N'url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mobile_ext_session_id',
    @level2type = N'COLUMN',
    @level2name = N'create_date'