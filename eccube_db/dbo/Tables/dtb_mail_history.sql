CREATE TABLE dtb_mail_history (
    send_id int NOT NULL,
    order_id int NOT NULL,
    send_date datetimeoffset,
    template_id int,
    creator_id int NOT NULL,
    subject nvarchar(max),
    mail_body nvarchar(max),
    PRIMARY KEY (send_id)
);
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mail_history',
    @level2type = N'COLUMN',
    @level2name = N'send_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'受注ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mail_history',
    @level2type = N'COLUMN',
    @level2name = N'order_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送信日時',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mail_history',
    @level2type = N'COLUMN',
    @level2name = N'send_date'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'テンプレートID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mail_history',
    @level2type = N'COLUMN',
    @level2name = N'template_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'作成者',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mail_history',
    @level2type = N'COLUMN',
    @level2name = N'creator_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'件名',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mail_history',
    @level2type = N'COLUMN',
    @level2name = N'subject'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'本文',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_mail_history',
    @level2type = N'COLUMN',
    @level2name = N'mail_body'