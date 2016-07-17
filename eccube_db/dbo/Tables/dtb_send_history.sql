CREATE TABLE [dbo].[dtb_send_history] (
    [send_id]        INT                NOT NULL,
    [mail_method]    SMALLINT           NULL,
    [subject]        NVARCHAR (4000)     NULL,
    [body]           NVARCHAR (MAX)     NULL,
    [send_count]     INT                NULL,
    [complete_count] INT                DEFAULT ((0)) NOT NULL,
    [start_date]     DATETIMEOFFSET (7) NULL,
    [end_date]       DATETIMEOFFSET (7) NULL,
    [search_data]    NVARCHAR (MAX)     NULL,
    [del_flg]        SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]     INT                NOT NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([send_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メルマガ送信履歴',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'send_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信方法',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'mail_method'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'件名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'subject'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'本文',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'body'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'send_count'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信完了数',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'complete_count'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信開始日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'start_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信終了日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'end_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'検索条件',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'search_data'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_send_history',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
