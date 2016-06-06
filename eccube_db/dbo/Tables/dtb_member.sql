CREATE TABLE [dbo].[dtb_member] (
    [member_id]   INT                NOT NULL,
    [name]        NVARCHAR (MAX)     NULL,
    [department]  NVARCHAR (MAX)     NULL,
    [login_id]    NVARCHAR (MAX)     NOT NULL,
    [password]    NVARCHAR (MAX)     NOT NULL,
    [salt]        NVARCHAR (MAX)     NOT NULL,
    [authority]   SMALLINT           NOT NULL,
    [rank]        INT                DEFAULT ((0)) NOT NULL,
    [work]        SMALLINT           DEFAULT ((1)) NOT NULL,
    [del_flg]     SMALLINT           DEFAULT ((0)) NOT NULL,
    [creator_id]  INT                NOT NULL,
    [create_date] DATETIMEOFFSET (7) DEFAULT (getdate()) NOT NULL,
    [update_date] DATETIMEOFFSET (7) NOT NULL,
    [login_date]  DATETIMEOFFSET (7) NULL,
    PRIMARY KEY CLUSTERED ([member_id] ASC)
);

