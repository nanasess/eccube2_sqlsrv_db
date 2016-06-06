CREATE TABLE [dbo].[dtb_mobile_ext_session_id] (
    [session_id]  VARCHAR (64)       NOT NULL,
    [param_key]   NVARCHAR (MAX)     NULL,
    [param_value] NVARCHAR (MAX)     NULL,
    [url]         NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([session_id] ASC)
);

