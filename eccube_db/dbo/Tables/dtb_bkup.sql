CREATE TABLE [dbo].[dtb_bkup] (
    [bkup_name]   VARCHAR (64)       NOT NULL,
    [bkup_memo]   NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([bkup_name] ASC)
);

