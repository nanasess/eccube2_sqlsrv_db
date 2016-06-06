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

