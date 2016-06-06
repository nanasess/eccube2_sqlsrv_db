CREATE TABLE [dbo].[dtb_csv_sql] (
    [sql_id]      INT                NOT NULL,
    [sql_name]    NVARCHAR (MAX)     NOT NULL,
    [csv_sql]     NVARCHAR (MAX)     NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([sql_id] ASC)
);

