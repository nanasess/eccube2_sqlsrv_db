CREATE TABLE [dbo].[dtb_holiday] (
    [holiday_id]  INT                NOT NULL,
    [title]       NVARCHAR (MAX)     NOT NULL,
    [month]       SMALLINT           NOT NULL,
    [day]         SMALLINT           NOT NULL,
    [rank]        INT                DEFAULT ((0)) NOT NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([holiday_id] ASC)
);

