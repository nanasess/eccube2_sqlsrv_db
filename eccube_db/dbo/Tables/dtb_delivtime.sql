CREATE TABLE [dbo].[dtb_delivtime] (
    [deliv_id]   INT            NOT NULL,
    [time_id]    INT            NOT NULL,
    [deliv_time] NVARCHAR (256) NOT NULL,
    PRIMARY KEY CLUSTERED ([deliv_id] ASC, [time_id] ASC),
    CONSTRAINT [FK_dtb_delivtime_dtb_deliv] FOREIGN KEY ([deliv_id]) REFERENCES [dbo].[dtb_deliv] ([deliv_id])
);


GO
ALTER TABLE [dbo].[dtb_delivtime] NOCHECK CONSTRAINT [FK_dtb_delivtime_dtb_deliv];

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配達時間',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_delivtime',
    @level2type = NULL,
    @level2name = NULL
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送業者ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_delivtime',
    @level2type = N'COLUMN',
    @level2name = N'deliv_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送時間ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_delivtime',
    @level2type = N'COLUMN',
    @level2name = N'time_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'配送時間',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'dtb_delivtime',
    @level2type = N'COLUMN',
    @level2name = N'deliv_time'
