CREATE TABLE [dbo].[dtb_pagelayout] (
    [device_type_id] INT                NOT NULL,
    [page_id]        INT                NOT NULL,
    [page_name]      NVARCHAR (MAX)     NULL,
    [url]            NVARCHAR (MAX)     NOT NULL,
    [filename]       NVARCHAR (MAX)     NULL,
    [header_chk]     SMALLINT           DEFAULT ((1)) NULL,
    [footer_chk]     SMALLINT           DEFAULT ((1)) NULL,
    [edit_flg]       SMALLINT           DEFAULT ((1)) NULL,
    [author]         NVARCHAR (MAX)     NULL,
    [description]    NVARCHAR (MAX)     NULL,
    [keyword]        NVARCHAR (MAX)     NULL,
    [update_url]     NVARCHAR (MAX)     NULL,
    [create_date]    DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]    DATETIMEOFFSET (7) NOT NULL,
    [meta_robots]    NVARCHAR (MAX)     NULL,
    PRIMARY KEY CLUSTERED ([device_type_id] ASC, [page_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ページレイアウト情報',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'デバイス種別ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'device_type_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ページID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'page_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ページ名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'page_name'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'URL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ファイル名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'filename'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ヘッダチェック',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'header_chk'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'フッタチェック',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'footer_chk'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'編集可能フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'edit_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'author'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'概要',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'description'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'キーワード',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'keyword'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新URL',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'update_url'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'robot.txt',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_pagelayout',
    @level2type = N'COLUMN',
    @level2name = N'meta_robots'
