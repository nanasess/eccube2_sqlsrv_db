﻿CREATE TABLE [dbo].[dtb_delivfee] (
    [deliv_id] INT         NOT NULL,
    [fee_id]   INT         NOT NULL,
    [fee]      NUMERIC (9) NOT NULL,
    [pref]     SMALLINT    NULL,
    PRIMARY KEY CLUSTERED ([deliv_id] ASC, [fee_id] ASC),
    CONSTRAINT [FK_dtb_delivfee_dtb_deliv] FOREIGN KEY ([deliv_id]) REFERENCES [dbo].[dtb_deliv] ([deliv_id])
);


GO
ALTER TABLE [dbo].[dtb_delivfee] NOCHECK CONSTRAINT [FK_dtb_delivfee_dtb_deliv];

