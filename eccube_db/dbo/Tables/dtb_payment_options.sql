CREATE TABLE [dbo].[dtb_payment_options] (
    [deliv_id]   INT NOT NULL,
    [payment_id] INT NOT NULL,
    [rank]       INT NULL,
    PRIMARY KEY CLUSTERED ([deliv_id] ASC, [payment_id] ASC),
    CONSTRAINT [FK_dtb_payment_options_dtb_deliv] FOREIGN KEY ([deliv_id]) REFERENCES [dbo].[dtb_deliv] ([deliv_id]),
    CONSTRAINT [FK_dtb_payment_options_dtb_payment] FOREIGN KEY ([payment_id]) REFERENCES [dbo].[dtb_payment] ([payment_id])
);


GO
ALTER TABLE [dbo].[dtb_payment_options] NOCHECK CONSTRAINT [FK_dtb_payment_options_dtb_deliv];


GO
ALTER TABLE [dbo].[dtb_payment_options] NOCHECK CONSTRAINT [FK_dtb_payment_options_dtb_payment];


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送業者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment_options',
    @level2type = N'COLUMN',
    @level2name = N'deliv_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'支払い方法ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_payment_options',
    @level2type = N'COLUMN',
    @level2name = N'payment_id'