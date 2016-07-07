CREATE TABLE [dbo].[dtb_mailmaga_template] (
    [template_id] INT                NOT NULL,
    [subject]     NVARCHAR (MAX)     NULL,
    [mail_method] INT                NULL,
    [body]        NVARCHAR (MAX)     NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([template_id] ASC)
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'メールテンプレート',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'テンプレートID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = N'COLUMN',
    @level2name = N'template_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'件名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = N'COLUMN',
    @level2name = N'subject'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信方法',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = N'COLUMN',
    @level2name = N'mail_method'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'本文',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = N'COLUMN',
    @level2name = N'body'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'削除フラグ',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = N'COLUMN',
    @level2name = N'del_flg'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = N'COLUMN',
    @level2name = N'create_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'更新日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mailmaga_template',
    @level2type = N'COLUMN',
    @level2name = N'update_date'
