CREATE TABLE [dbo].[dtb_mailtemplate] (
    [template_id] INT                NOT NULL,
    [subject]     NVARCHAR (MAX)     NULL,
    [header]      NVARCHAR (MAX)     NULL,
    [footer]      NVARCHAR (MAX)     NULL,
    [creator_id]  INT                NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([template_id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'テンプレートID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailtemplate',
    @level2type = N'COLUMN',
    @level2name = N'template_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'件名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailtemplate',
    @level2type = N'COLUMN',
    @level2name = N'subject'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ヘッダ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailtemplate',
    @level2type = N'COLUMN',
    @level2name = N'header'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'フッタ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailtemplate',
    @level2type = N'COLUMN',
    @level2name = N'footer'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailtemplate',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailtemplate',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailtemplate',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailtemplate',
    @level2type = N'COLUMN',
    @level2name = N'update_date'