CREATE TABLE [dbo].[dtb_delivfee] (
    [deliv_id] INT         NOT NULL,
    [fee_id]   INT         NOT NULL,
    [fee]      NUMERIC (9) NOT NULL,
    [pref]     SMALLINT    NULL,
    PRIMARY KEY CLUSTERED ([deliv_id] ASC, [fee_id] ASC),
    CONSTRAINT [FK_dtb_delivfee_dtb_deliv] FOREIGN KEY ([deliv_id]) REFERENCES [dbo].[dtb_deliv] ([deliv_id])
);


GO
ALTER TABLE [dbo].[dtb_delivfee] NOCHECK CONSTRAINT [FK_dtb_delivfee_dtb_deliv];


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送業者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_delivfee',
    @level2type = N'COLUMN',
    @level2name = N'deliv_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送料ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_delivfee',
    @level2type = N'COLUMN',
    @level2name = N'fee_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'送料',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_delivfee',
    @level2type = N'COLUMN',
    @level2name = N'fee'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'都道府県ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_delivfee',
    @level2type = N'COLUMN',
    @level2name = N'pref'