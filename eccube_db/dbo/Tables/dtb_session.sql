CREATE TABLE [dbo].[dtb_session] (
    [sess_id]     VARCHAR (64)       NOT NULL,
    [sess_data]   NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([sess_id] ASC)
);

