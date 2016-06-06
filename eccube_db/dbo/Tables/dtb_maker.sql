CREATE TABLE [dbo].[dtb_maker] (
    [maker_id]    INT                NOT NULL,
    [name]        NVARCHAR (MAX)     NOT NULL,
    [rank]        INT                DEFAULT ((0)) NOT NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([maker_id] ASC)
);

