CREATE TABLE [dbo].[dtb_delivtime] (
    [deliv_id]   INT            NOT NULL,
    [time_id]    INT            NOT NULL,
    [deliv_time] NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([deliv_id] ASC, [time_id] ASC),
    CONSTRAINT [FK_dtb_delivtime_dtb_deliv] FOREIGN KEY ([deliv_id]) REFERENCES [dbo].[dtb_deliv] ([deliv_id])
);


GO
ALTER TABLE [dbo].[dtb_delivtime] NOCHECK CONSTRAINT [FK_dtb_delivtime_dtb_deliv];

