CREATE TABLE [dbo].[dtb_kiyaku] (
    [kiyaku_id]    INT                NOT NULL,
    [kiyaku_title] NVARCHAR (MAX)     NOT NULL,
    [kiyaku_text]  NVARCHAR (MAX)     NOT NULL,
    [rank]         INT                DEFAULT ((0)) NOT NULL,
    [creator_id]   INT                NOT NULL,
    [create_date]  DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date]  DATETIMEOFFSET (7) NOT NULL,
    [del_flg]      SMALLINT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([kiyaku_id] ASC)
);

